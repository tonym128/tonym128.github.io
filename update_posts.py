import os
import re

posts_dir = '/mnt/d/projects/tonym128.github.io/_posts'

def extract_excerpt(content):
    # Remove images
    content = re.sub(r'!\[.*?\]\(.*?\)', '', content)
    # Remove Jekyll/Liquid tags
    content = re.sub(r'\{:.*?\}', '', content)
    # Remove headers
    content = re.sub(r'^#+.*$', '', content, flags=re.MULTILINE)
    # Remove HTML tags
    content = re.sub(r'<[^>]+>', '', content)
    
    # Get first few sentences
    lines = content.split('\n')
    text = ""
    for line in lines:
        line = line.strip()
        if line and not line.startswith('!['):
            text += line + " "
            if len(text) > 200:
                break
    
    # Clean up text
    text = text.strip()
    # Simple sentence splitter (approximate)
    sentences = re.split(r'(?<=[.!?])\s+', text)
    excerpt = " ".join(sentences[:2])
    
    # Limit length and clean up
    if len(excerpt) > 250:
        excerpt = excerpt[:247] + "..."
    
    return excerpt.replace('"', '\\"')

for filename in os.listdir(posts_dir):
    if not (filename.endswith('.markdown') or filename.endswith('.md')):
        continue
        
    filepath = os.path.join(posts_dir, filename)
    with open(filepath, 'r', encoding='utf-8') as f:
        content = f.read()
    
    parts = content.split('---', 2)
    if len(parts) < 3:
        continue
        
    front_matter = parts[1]
    body = parts[2]
    
    # Extract excerpt
    excerpt = extract_excerpt(body)
    
    # Update front matter
    fm_lines = front_matter.strip().split('\n')
    new_fm = {}
    ordered_keys = []
    for line in fm_lines:
        if ':' in line:
            key, val = line.split(':', 1)
            key = key.strip()
            new_fm[key] = val.strip()
            ordered_keys.append(key)
        else:
            # Handle list items or other lines? 
            # Simple parser might fail on complex YAML, but Jekyll posts are usually simple.
            pass

    # Ensure layout: single
    new_fm['layout'] = 'single'
    if 'layout' not in ordered_keys:
        ordered_keys.insert(0, 'layout')
        
    # Add excerpt
    new_fm['excerpt'] = f'"{excerpt}"'
    if 'excerpt' not in ordered_keys:
        # Put it after title if possible, or near the top
        if 'title' in ordered_keys:
            idx = ordered_keys.index('title')
            ordered_keys.insert(idx + 1, 'excerpt')
        else:
            ordered_keys.append('excerpt')

    # Rebuild front matter
    updated_fm_lines = []
    # Use ordered_keys to preserve some order, but check for duplicates in the logic above
    seen_keys = set()
    for key in ordered_keys:
        if key in seen_keys: continue
        seen_keys.add(key)
        
        # Special case for tags which are often lists in these files
        if key == 'tags':
            # Find the original tags block
            tags_block = []
            found_tags = False
            for line in fm_lines:
                if line.strip().startswith('tags:'):
                    found_tags = True
                    tags_block.append(line)
                elif found_tags and line.startswith('-'):
                    tags_block.append(line)
                elif found_tags and line.strip() == "":
                    continue
                elif found_tags:
                    break
            if tags_block:
                updated_fm_lines.extend(tags_block)
            else:
                updated_fm_lines.append(f"{key}: {new_fm[key]}")
        else:
            updated_fm_lines.append(f"{key}: {new_fm[key]}")
            
    # Write back
    new_content = "---\n" + "\n".join(updated_fm_lines) + "\n---\n" + body
    with open(filepath, 'w', encoding='utf-8') as f:
        f.write(new_content)

print("Processed all files.")

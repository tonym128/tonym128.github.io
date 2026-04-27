require 'yaml'
require 'date'
require 'time'

Dir.glob('_posts/*.{md,markdown}').each do |file|
  content = File.read(file)
  
  if content =~ /\A(---\s*\n.*?\n?)^(---\s*$\n?)/m
    front_matter_str = $1
    body = $'
    
    begin
      front_matter = YAML.safe_load(front_matter_str, permitted_classes: [Date, Time]) || {}
    rescue => e
      puts "Error parsing YAML in #{file}: #{e}"
      next
    end
    
    # Remove link, slug, wordpress_id
    front_matter.delete('link')
    front_matter.delete('slug')
    front_matter.delete('wordpress_id')
    
    # Generate excerpt from body
    # Remove headings and empty lines, get first text paragraph
    body_text = body.gsub(/^#+.*$/, '').gsub(/<[^>]+>/, '').gsub(/!\[.*?\]\(.*?\)/, '').gsub(/\[.*?\]\(.*?\)/, '').strip
    first_paragraph = body_text.split(/\n\n+/).first || ""
    
    # Clean up markdown chars
    first_paragraph = first_paragraph.gsub(/[\*\_>]/, '').strip
    
    # Take first two sentences, up to ~200 chars
    sentences = first_paragraph.split(/(?<=\.)\s+/)
    excerpt = sentences[0..1].join(' ')
    if excerpt.length > 250
      excerpt = excerpt[0..247] + "..."
    end
    
    front_matter['excerpt'] = excerpt unless excerpt.empty?
    
    # Write back
    new_content = YAML.dump(front_matter) + "---\n" + body
    File.write(file, new_content)
  end
end

# Also fix about and contact
Dir.glob('{about,contact}/*.{md,markdown}').each do |file|
  content = File.read(file)
  if content =~ /\A(---\s*\n.*?\n?)^(---\s*$\n?)/m
    front_matter_str = $1
    body = $'
    begin
      front_matter = YAML.safe_load(front_matter_str, permitted_classes: [Date, Time]) || {}
    rescue => e
      puts "Error parsing YAML in #{file}: #{e}"
      next
    end
    front_matter.delete('link')
    front_matter.delete('slug')
    front_matter.delete('wordpress_id')
    new_content = YAML.dump(front_matter) + "---\n" + body
    File.write(file, new_content)
  end
end

puts "Done processing files."

Dir.glob('_posts/*.{md,markdown}').each do |file|
  content = File.read(file)
  new_content = content.gsub(/^title: (.*?)$/) do |match|
    title_text = $1.strip
    if title_text.start_with?('"') || title_text.start_with?("'")
      match
    else
      "title: \"#{title_text}\""
    end
  end
  File.write(file, new_content)
end
puts "Fixed unquoted titles."

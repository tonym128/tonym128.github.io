require 'yaml'
require 'date'
require 'time'

puts "Title | Excerpt"
puts "--- | ---"

Dir.glob('_posts/*.{md,markdown}').each do |file|
  content = File.read(file)
  if content =~ /\A(---\s*\n.*?\n?)^(---\s*$\n?)/m
    front_matter_str = $1
    begin
      front_matter = YAML.safe_load(front_matter_str, permitted_classes: [Date, Time]) || {}
      puts "#{front_matter['title']} | #{front_matter['excerpt']}"
    rescue => e
      puts "Error parsing #{file}: #{e}"
    end
  end
end

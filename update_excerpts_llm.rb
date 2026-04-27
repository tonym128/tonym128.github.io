require 'yaml'
require 'date'
require 'time'

excerpts_map = {
  "2018-01-26-new-world-miner.markdown" => "A deep dive into the technology and mechanics of cryptocurrency mining from the perspective of an eager techno-nerd.",
  "2018-02-22-faceoff-without-the-surgery-of-nicholas-cage-deepface-and-faceswap.markdown" => "Exploring the accessible but controversial world of FaceSwap technology and the rise of deepfakes.",
  "2018-03-02-toe-dabbing-in-esp8266.markdown" => "An introduction to the ESP8266 chip and its incredible potential for building custom IoT devices.",
  "2018-03-08-the-creation-of-the-lauren.markdown" => "How I built a custom automation tool named Lauren to eliminate tedious manual work in content publishing.",
  "2018-03-16-the-pixelated-dawn-of-virtual-reality.markdown" => "A nostalgic look back at the early days of virtual reality and how modern technology revived the dream.",
  "2018-03-26-slownet-fasternet-raspinet.markdown" => "Diagnosing home network issues caused by cloud uploads and taking back control of internet bandwidth.",
  "2018-03-29-is-raytracing-the-future-of-rendering-or-the-next-big-fad.markdown" => "Examining the resurgence of ray tracing technology and its potential to revolutionize real-time rendering.",
  "2018-04-10-interviewing-dos-and-donts.markdown" => "A practical guide to the do's and don'ts of conducting effective technical interviews.",
  "2018-04-10-what-i-learnt-from-interviewing-over-50-people-in-a-year.markdown" => "Lessons learned and reflections from conducting over fifty technical interviews in a single year.",
  "2018-09-10-the-art-of-the-illusion-with-photogrammetry.markdown" => "Discovering the magic of photogrammetry and how to translate real-world objects into digital 3D models.",
  "2018-10-22-wordpress-how-many-ways-can-i-say-hello.markdown" => "The surprisingly complex journey of setting up and customizing my first WordPress blog.",
  "2019-02-17-defcon-26-there-and-back-again.markdown" => "Recapping an unforgettable experience attending DefCon 26 and diving into the hacker community.",
  "2019-04-21-building-your-own-game-console.markdown" => "The fun and challenging journey of designing and building a custom hardware game console.",
  "2019-12-15-making-a-badge.markdown" => "Detailing the firmware and hardware design behind the custom electronic badge for BSides Cape Town 2019.",
  "2021-06-29-arduboy-tv-on-esp32-with-ps3-remote-control.md" => "Creating a minimal-effort Arduboy game console using an ESP32 and a PS3 remote control.",
  "2021-08-25-the-time-i-uploaded-3000-videos-to-youtube.md" => "The story of an automation project that generated and uploaded 3,000 videos to YouTube in six months.",
  "2023-08-13-keeping-it-quite-whispercpp-raspberry-pi-python-and-a-telegram-bot.markdown" => "Building a Telegram bot with Whisper.cpp and a Raspberry Pi to automatically transcribe voice notes.",
  "2023-08-20-its-storytime.markdown" => "Automating a daily short story podcast using AI generation, text-to-speech, and a Raspberry Pi.",
  "2025-12-07-peakylight-chasing-shadows.markdown" => "Introducing Peakylight, an interactive 3D map tool that visualizes terrain shadows and actual sunlight hours.",
  "2025-12-29-peakylight-post-mortem.markdown" => "A post-mortem on building the Peakylight web app, born from the need to find a sunny property in a valley.",
  "2026-02-23-aussie-meme-boss-rush.markdown" => "Behind the scenes of Aussie Meme Boss Rush, a neon-drenched 3D web shooter built using Vibe Coding.",
  "2026-03-02-sunrunner-high-speed-polygonal-rail-shooter.markdown" => "Developing Sun Runner, a high-speed polygonal rail shooter contained entirely within a single HTML file.",
  "2026-03-04-texgen-procedural-texture-generator.markdown" => "Creating TexGen, a lightweight JavaScript library for generating procedural GLSL textures on the fly.",
  "2026-03-08-trianglevision-real-time-geometric-video-abstraction.markdown" => "Building a high-performance web tool that transforms video feeds into stylized, real-time triangle meshes.",
  "2026-03-17-axis-rush-high-speed-cylindrical-racing.markdown" => "Releasing Axis Rush, a futuristic 3D arcade racer built with Three.js featuring cylindrical tracks.",
  "2026-04-25-debugging-the-novel-how-i-built-a-9-book-cyberpunk-series-with-ai.markdown" => "How a weekend experiment turned into building a nine-book cyberpunk series using AI and LLMs."
}

Dir.glob('_posts/*.{md,markdown}').each do |file|
  filename = File.basename(file)
  new_excerpt = excerpts_map[filename]
  
  next if new_excerpt.nil?

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
    
    front_matter['excerpt'] = new_excerpt
    
    # We will format it properly
    new_content = YAML.dump(front_matter) + "---\n" + body
    File.write(file, new_content)
    puts "Updated #{filename}"
  end
end

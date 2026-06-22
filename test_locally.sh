#!/bin/bash

# Exit on error
set -e

# Function to check if a command exists
command_exists() {
  command -v "$1" >/dev/null 2>&1
}

echo "--- Jekyll Local Environment Setup ---"

# Add local gem paths to PATH for the duration of this script
export PATH="$HOME/.local/share/gem/ruby/3.0.0/bin:$HOME/.gem/ruby/3.0.0/bin:$PATH"

# 1. Check for Ruby
if ! command_exists ruby; then
  echo "❌ Ruby not found."
  echo "Please install Ruby and development headers:"
  echo "  sudo apt update && sudo apt install ruby-full build-essential zlib1g-dev"
  exit 1
fi

# 2. Check for Bundler
if ! command_exists bundle; then
  echo "⚠️ Bundler not found. Attempting to install locally..."
  gem install bundler --user-install || { echo "❌ Failed to install bundler."; exit 1; }
  
  # Try to find where it was installed and add to PATH
  GEM_USER_DIR=$(ruby -e 'puts Gem.user_dir' 2>/dev/null || echo "$HOME/.gem/ruby/3.0.0")
  export PATH="$GEM_USER_DIR/bin:$PATH"
fi

# Double check bundle is working
if ! command_exists bundle; then
  echo "❌ Bundler was installed but is still not in PATH."
  echo "Try running: source ~/.bashrc and then run this script again."
  exit 1
fi

# 3. Install project dependencies
echo "📦 Installing project dependencies..."
# Configure bundler to use local vendor directory
bundle config set --local path 'vendor/bundle'
bundle install

# 4. Serve the site locally
echo "🚀 Starting Jekyll server..."
echo "Access your site at: http://localhost:4000"
echo "Note: If you are on WSL and auto-regeneration doesn't work, try adding --no-watch"

# Using 0.0.0.0 to make it accessible if in a container/WSL/Docker
bundle exec jekyll serve --livereload --host 0.0.0.0

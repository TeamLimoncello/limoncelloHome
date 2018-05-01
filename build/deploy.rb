#!/usr/bin/env ruby

puts `build/sass.rb`
File.rename 'style/.deploy.gitignore', 'style/.gitignore'
#!/usr/bin/env ruby

`build/sass.rb`
File.rename 'style/.gitignore.deploy', 'style/.gitignore'
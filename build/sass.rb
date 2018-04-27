#!/usr/bin/env ruby

def sass_files(&block)
  Dir.glob('style/*.{sass,scss}') do |source|
    block[source, source.sub(/\.s[ac]ss$/, 'css')]
  end
end

processed = []

sass_files do |source, output|
  result = system('sass', source, output)
  raise result unless $?.to_i == 0
  raise "When compiled the module should output some CSS" unless File.exists?(output)
  processed << source
end

if processed.empty?
  puts "No SCSS to build"
else
  puts "Built CSS from #{processed.join ", "}"
end

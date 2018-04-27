#!/usr/bin/env ruby

processed = []

Dir.glob('style/*.scss') do |file|
  output = file.sub(/scss$/, 'css')
  result = system('scss', file, output)
  raise result unless $?.to_i == 0
  raise "When compiled the module should output some CSS" unless File.exists?(output)
  processed << file
end

if processed.empty?
  puts "No SCSS to build"
else
  puts "Built CSS from #{processed.join ", "}"
end

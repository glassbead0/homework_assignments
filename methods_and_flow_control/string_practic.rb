#!/usr/bin/env ruby

# i'm going to use my_string to practice with string methods
my_string = 'this is a string to practice with'

puts my_string
puts my_string.capitalize
puts my_string.upcase
puts my_string.gsub('string', "'string'").capitalize
puts "The string '#{my_string}' has #{my_string.length} characters"
puts my_string.reverse
puts ('practice ' * 3).rstrip + '!'

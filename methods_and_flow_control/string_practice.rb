#!/usr/bin/env ruby

# i'm going to use my_string to practice with string methods
my_string = 'this is a string to practice with'
practice = my_string.slice(20..28) * 3

puts my_string
puts my_string.capitalize
puts my_string.upcase
puts my_string.gsub('string', "'string'").capitalize
puts "The string '#{my_string}' has #{my_string.length} characters"
puts my_string.reverse
puts practice.rstrip +  '!'

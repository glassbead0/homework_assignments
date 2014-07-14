#!/usr/bin/env ruby



99.downto(3) do |number_of_bottles|
  puts "#{number_of_bottles} bottles of beer on the wall, #{number_of_bottles} bottles of beer."
  puts "Take one down and pass it around, #{number_of_bottles-1} bottles of beer on the wall."
  puts
end

puts '2 bottles of beer on the wall, 2 bottles of beer.'
puts 'Take one down and pass it around, 1 bottle of beer on the wall.'
puts
puts '1 bottle of beer on the wall, 1 bottle of beer.'
puts 'Take one down, pass it around, no more bottles of beer on the wall.'
puts
puts 'No more bottles of beer on the wall, no more bottles of beer.'
puts 'Go to the store and buy some more, 99 bottles of beer on the wall.'

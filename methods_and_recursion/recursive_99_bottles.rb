#!/usr/bin/env ruby

def sing_song(number_of_bottles)
  if number_of_bottles == 0
    puts 'No bottles of beer on the wall, no bottles of beer.'
    puts 'Go to the store and buy some more, 99 bottles of beer on the wall.'
  else
    bottles = number_of_bottles == 1 ? 'bottle' : 'bottles' # correct grammar
    puts "#{number_of_bottles} #{bottles} of beer on the wall, #{number_of_bottles} #{bottles} of beer."
    number_of_bottles -= 1

    bottles = number_of_bottles == 1 ? 'bottle' : 'bottles' # correct grammar
    number_of_bottles = 'no' if number_of_bottles == 0 # temporarily change 0 to 'no' for "no bottles of beer"
    puts "Take one down and pass it around, #{number_of_bottles} #{bottles} of beer on the wall."
    number_of_bottles = 0 if number_of_bottles == 'no' # change it back to 0 for the recursion to work.

    puts
    sing_song(number_of_bottles)
  end
end

sing_song(99)

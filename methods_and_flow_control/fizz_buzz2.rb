#!/usr/bin/env ruby

# print the numbers 1 - 100
# if the number is divisible by 3, print Fizz
# if the number is divisible by 5, print Buzz
# if the number is divisible by 3 and 5, print FizzBuzz

100.times do |y|
  x = y + 1
  puts x unless x % 3 == 0 || x % 5 == 0
  puts 'Fizz' if x % 3 == 0 unless x % 5 == 0
  puts 'Buzz' if x % 5 == 0 unless x % 3 == 0
  puts 'FizzBuzz' if x % 15 == 0
end

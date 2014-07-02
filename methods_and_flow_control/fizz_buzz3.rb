#!/usr/bin/env ruby

# this is the FizzBuzz program generalized to any two numbers, not just 3 and 5.

# we need these function to use in our .each loop below.
# greatest common divisor
def gcd(x, y) # finds greatest common factor of x,y
  while y != 0
    t = y
    y = x % y
    x = t
  end
  x
end

# least common multiple
def lcm(x, y)
  x * y / gcd(x, y)
end

# change the numbers for fizz and buzz. it will
# print "Fizz" if the number is a multiplle the fizz number,
# "Buzz" if the number is a multiple of the buzz number,
# and "FizzBuzz" if the number is a multiple of both.

fizz = 9
buzz = 6

# loops through the numbers from 1 to 100.
(1..100).each do |x|
  # if the number is a multiple of both fizz and buzz, print FizzBuzz
  if x % lcm(fizz, buzz) == 0
    puts 'FizzBuzz'
  # if not, but if it is a multiple of fizz, print Fizz
  elsif x % fizz == 0
    puts 'Fizz'
  # if not, but it is a multiple of buzz, print Buzz
  elsif x % buzz == 0
    puts 'Buzz'
  # if none of those are the case, just print the number.
  else
    puts x
  end
end

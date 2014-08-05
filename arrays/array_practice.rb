#!/usr/bin/env ruby
numbers = (1..10).to_a

numbers.each do |num|
  print num.to_s + '...'
end
puts
print 'T-'
print numbers.reverse.join(', ')
print '...  BLASTOFF!'
puts "\nThe last element is #{numbers.last}"
puts "The first element is #{numbers.first}"
puts "The third element is #{numbers[2]}"
puts "The element with an index of 3 is #{numbers[3]}"
puts "The second from last element is #{numbers[-2]}"
puts "The first four elements are '#{numbers.slice(0, 4).join(', ')}'"
numbers.delete(5)
numbers.delete(6)
numbers.delete(7)
puts "If we delete 5, 6 and 7 from the array, we're left with [#{numbers.join(',')}]"
numbers.unshift(5)
puts "If we add 5 at the beginning of the array, we're left with [#{numbers.join(',')}] "
numbers.push(6)
puts "If we add 6 at the end of the array, we're left with [#{numbers.join(',')}]"
numbers.keep_if { |num| num > 8 }
puts "Only the elements #{numbers} are > 8."
numbers.delete_at(0) while numbers.length > 0
puts "If we remove all the elements, then the length of the array is #{numbers.length}"

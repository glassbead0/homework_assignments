#!/usr/bin/env ruby

# this is a method that will ask for a certain type of word.
# Pass that type of word to the method and it will return the response.
def ask_for(type)
  puts "Give me #{type}:"
  gets.chomp
end

# this is a list of the types of words required by the madlib
words = ['an adjective', 'another adjective', 'a noun', 'another noun', 'a plural noun', 'a game',
         'another plural noun', 'a verb ending in "ing"', 'another verb ending in "ing"',
         'another plural noun', 'another verb ending in "ing"', 'another noun', 'a plant',
         'a part of the body', 'a place', 'another verb ending in "ing"', 'another adjective',
         'a number', 'another plural noun']

# this was the first way I tried, but the %w() format doesn't allow spaces
# words = %w(adjective adjective noun noun game plural_noun verb_ending_in_ing verb_ending_in_ing
# plural_noun verb_ending_in_ing noun plant body_part place verb_ending_in_ing adjective number plural_noun)

# these lines loop through the types of word, asks the user for that word, and adds each one to an array
user_input = []
index = 0
words.each do |word_type|
  user_input[index] = ask_for(word_type)
  index += 1
end

# the next 7 lines determine if the article 'a' or 'an' should be used in certain cases.
# Of course, English is stupid, so it doesn't always work
a_an = []
counter = 0
user_input.each do |word|
  a_an[counter] = 'a'
  a_an[counter] = 'an' if %w(a e i o u).include?(word[0])
  counter += 1
end

# and here's the madlib paragraph!
madlib_paragraph = <<MY_HEREDOC
A vacation is when you take a trip to some #{user_input[0]} place
with your #{user_input[1]} family. Usually you go to some place
that is near #{a_an[2]} #{user_input[2]} or up on #{a_an[3]} #{user_input[3]}.
A good vacation place is one where you can ride #{user_input[4]}
or play #{user_input[5]} or go hunting for #{user_input[6]}. I like
to spend my time #{user_input[7]} or #{user_input[8]}.
When parents go on a vacation, they spend their time eating
three #{user_input[9]} a day, and fathers play golf, and mothers
sit around #{user_input[10]}. Last summer, my little brother
fell in #{a_an[11]} #{user_input[11]} and got poison #{user_input[12]} all
over his #{user_input[13]}. My family is going to go to (the)
#{user_input[14]}, and I will practice #{user_input[15]}. Parents
need vacations more than kids because parents are always very
#{user_input[16]} and because they have to work #{user_input[17]}
hours every day all year making enough #{user_input[18]} to pay
for the vacation.
MY_HEREDOC

puts "\nHere is your madlib:\n#{madlib_paragraph}"

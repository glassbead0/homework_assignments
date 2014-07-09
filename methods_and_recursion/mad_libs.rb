#!/usr/bin/env ruby

def ask_for type
  if type == 'adjective'
    puts "Give me an #{type}:"
  else
    puts "Give me a #{type}:"
  end
  gets.chomp
end

words = ['adjective', 'adjective', 'noun', 'noun', 'plural noun', 'game', 'plural noun', 'verb ending in "ing"', 'verb ending in "ing"', 'plural noun', 'verb ending in "ing"', 'noun', 'plant', 'part of the body', 'place', 'verb ending in "ing"', 'adjective', 'number', 'plural noun']

# this was the first way I tried, but the %w() format doesnt allow spaces
# word_types = %w(adjective adjective noun noun game plural_noun verb_ending_in_ing verb_ending_in_ing plural_noun verb_ending_in_ing noun plant part_of_body place verb_ending_in_ing adjective number plural_noun)
user_input = []

index = 0
words.each do |word_type|
  user_input[index] = ask_for(word_type)
  index += 1
end

madlib_paragraph = <<MY_HEREDOC
A vacation is when you take a trip to some #{user_input[0]} place
with your #{user_input[1]} family. Usually you go to some place
that is near a/an #{user_input[2]} or up on a/an #{user_input[3]}.
A good vacation place is one where you can ride #{user_input[4]}
or play #{user_input[5]} or go hunting for #{user_input[6]}. I like
to spend my time #{user_input[7]} or #{user_input[8]}.
When parents go on a vacation, they spend their time eating
three #{user_input[9]} a day, and fathers play golf, and mothers
sit around #{user_input[10]}. Last summer, my little brother
fell in a/an #{user_input[11]} and got poison #{user_input[12]} all
over his #{user_input[13]}. My family is going to go to (the)
#{user_input[14]}, and I will practice #{user_input[15]}. Parents
need vacations more than kids because parents are always very
#{user_input[16]} and because they have to work #{user_input[17]}
hours every day all year making enough #{user_input[18]} to pay
for the vacation.
MY_HEREDOC
puts
puts "Here is your madlib:\n#{madlib_paragraph}"

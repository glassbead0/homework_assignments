#!/usr/bin/env ruby

seconds_in_minute = 60
minutes_in_hour = 60
hours_in_day = 24
days_in_week = 7

puts "There are #{seconds_in_minute} seconds in a minute"
puts "There are #{minutes_in_hour} minutes in an hour"
puts "There are #{hours_in_day} hours in a day"
puts "There are #{days_in_week} days in a week"

seconds_in_hour = seconds_in_minute * minutes_in_hour
seconds_in_day = seconds_in_hour * hours_in_day
seconds_in_week = seconds_in_day * days_in_week

puts 'That means there are:'
puts "  #{seconds_in_hour} seconds in an hour,"
puts "  #{seconds_in_day} seconds in a day,"
puts "  #{seconds_in_week} seconds in a week"

seconds_in_20_years = seconds_in_week * 52 * 20
seconds_in_100_years = seconds_in_20_years * 5

puts "That means when you turn 20, you've been alive for #{seconds_in_20_years} seconds,"
# \ replaces + for multi-line string concatenation
puts 'and if you make it to 100, you will have ' +
     "lived #{seconds_in_100_years} seconds. Make them count!"

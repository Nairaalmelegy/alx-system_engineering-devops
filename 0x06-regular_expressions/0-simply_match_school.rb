#!/usr/bin/env ruby

#check if arguments are provided
if ARGV.empty?
  puts "Usage: ./0-simply_match_school.rb <input>"
  exit 1
end

#Extact arguments provided
input = ARGV[0]

# Define the regular expression
regex = /School/

# Use the match method to find matches
match = input.scan(regex)

# Output results
if match.empty?
  puts "$"
else
  puts match.join + "$"
end

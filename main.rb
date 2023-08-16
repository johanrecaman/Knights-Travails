require_relative './lib/travails.rb'
travails = Travails.new

#Gets the starting and ending positions from the user
puts "Enter the starting position:"
start = gets.chomp.split(",").map(&:to_i)
puts "Enter the ending position:"
ending = gets.chomp.split(",").map(&:to_i)

#prints the path

puts "The path from #{start} to #{ending} is:"
travails.knight_moves(start, ending)

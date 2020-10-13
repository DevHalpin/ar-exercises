require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
@millionOrMore = Store.where("annual_revenue >= ?", 1000000).count
@sum = Store.sum(:annual_revenue)
@average = Store.average(:annual_revenue)

puts "Sum: #{@sum}"

puts "Average: #{@average}"

puts "Stores generating $1M or more: #{@millionOrMore}"
require 'pp'
require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# testing validations
# @store1.employees.create(first_name: 'Alita', last_name: "Angel", hourly_rate: 50)
# 
# puts "recently added employee: "
# pp Employee.last
# 
# Store.create(
  # name: "YVR",
  # annual_revenue: 122000,
  # mens_apparel: false,
  # womens_apparel: true
# )
# 
# puts "recently added employee: "

name = gets.chomp
pp Store.create(name: name).errors.full_messages

# pp Store.last
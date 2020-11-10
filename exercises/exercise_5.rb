require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# output total revenue
puts "Total revenue: #{Store.sum(:annual_revenue)}"
# output average revenue
puts "Average revenue: #{Store.average(:annual_revenue)}"
# output total number of stores generating > 1000000
puts "Number of stores generating over 1 million: " +
"#{Store.where(annual_revenue: 1000000..Float::INFINITY).count}"
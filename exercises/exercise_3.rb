require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

# delete store 3
@store3 = Store.find_by(id: 3)
@store3.destroy

# check by count
puts "store count: #{Store.count}"
puts "store 1 name: #{@store1.name}"

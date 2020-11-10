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
# puts "store 2 name: #{@store2.name}" # works with instance variables
# puts "store 2 name: #{store2.name}" # doesn't work with local variables

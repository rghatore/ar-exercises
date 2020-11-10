require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# load store with id 1
@store1 = Store.find_by(id: 1)
@store2 = Store.find_by(id: 2)
@store1.name = "White Rock"
@store1.save
# OR @store1.update(name: "White Rock")
# puts @store1.name
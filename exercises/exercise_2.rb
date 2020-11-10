require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

=begin
  We are using instance variables because they can be used in other files
  when we require this module/file.
  Local variables are only scope to this module. They don't get "exported"
  when required by different files.
=end

# load store with id 1
@store1 = Store.find_by(id: 1)
@store2 = Store.find_by(id: 2)
@store1.name = "White Rock"
@store1.save
# OR @store1.update(name: "White Rock")
# puts @store1.name
# puts store2.name # only works for this file
require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# one to many relationship
# add employees for a particular store
@store1.employees.create(first_name: "Clark", last_name: "Kent", hourly_rate: 44)
@store1.employees.create(first_name: "Bruce", last_name: "Wayne", hourly_rate: 50)
@store1.employees.create(first_name: "Diana", last_name: "Prince", hourly_rate: 46)
@store2.employees.create(first_name: "Jason", last_name: "Todd", hourly_rate: 40)
@store2.employees.create(first_name: "Michael", last_name: "Schumacher", hourly_rate: 42)
@store2.employees.create(first_name: "Gal", last_name: "Gadot", hourly_rate: 40)
@store1.employees.create(first_name: "Naomi", last_name: "Osaka", hourly_rate: 42)


require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require 'pp'

puts "Exercise 4"
puts "----------"

# create 3 more stores
store = Store.create(
  name: "Surrey",
  annual_revenue: 224000,
  mens_apparel: false,
  womens_apparel: true
)

store = Store.create(
  name: "Whistler",
  annual_revenue: 1900000,
  mens_apparel: true,
  womens_apparel: false
)

store = Store.create(
  name: "Yaletown",
  annual_revenue: 430000,
  mens_apparel: true,
  womens_apparel: true
)

# get mens only stores
@mens_only_stores = Store.where({mens_apparel: true, womens_apparel: false})

# puts "mens only stores: #{@mens_stores.to_ary()}"
# loop through mens only stores
@mens_only_stores.to_ary().each { 
  |store| 
  puts "Store name: #{store.name}, annual revenue: #{store.annual_revenue}" 
}

# fetch stores that carry women's apparel and generate < 1000000
@women_stores_under_million = Store.where(womens_apparel: true, annual_revenue: 0..1000000-1)
# pp ("women stores with less than million: #{@women_stores_under_million.to_ary()}")
@women_stores_under_million.each {
  |store|
  pp store
}


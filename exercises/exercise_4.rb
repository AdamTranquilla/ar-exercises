require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
Store.create(
  name: "Surrey", 
  annual_revenue: 224000,
  mens_apparel: false, 
  womens_apparel: true
)
Store.create(
  name: "Whistler", 
  annual_revenue: 1900000,
  mens_apparel: true, 
  womens_apparel: false
)
Store.create(
  name: "Yaletown", 
  annual_revenue: 430000,
  mens_apparel: true, 
  womens_apparel: true
)

puts "#{Store.count} stores total"

puts "----------MENS ONLY----------"

@mens_clothing = Store.where(mens_apparel: true, womens_apparel: false)

puts "There are #{@mens_clothing.count} mens only stores"

@mens_clothing.each {|store| puts "Name: #{store.name} Revenue: #{store.annual_revenue}"}

puts "-------1 M WOMENS ONLY-------"

@womens_clothing = Store.where(mens_apparel: false, womens_apparel: true).where('annual_revenue > 1000000')

puts "There are #{@womens_clothing.count} womens only stores"

@womens_clothing.each {|store| puts "Name: #{store.name} Revenue: #{store.annual_revenue}"}
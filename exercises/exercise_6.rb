require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
# require "securerandom"

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "greg", last_name: "gobbler", hourly_rate: 41)
@store1.employees.create(first_name: "liam", last_name: "lizard", hourly_rate: 58)
@store1.employees.create(first_name: "sarah", last_name: "suzzzzie", hourly_rate: 1)
@store2.employees.create(first_name: "tom", last_name: "tinkle", hourly_rate: 9420)
@store2.employees.create(first_name: "john", last_name: "johnsonsonson", hourly_rate: 60000)

puts "Store 1 Employees : #{@store1.employees.count}"
puts "Store 2 Employees : #{@store2.employees.count}"
require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

# Your code goes here ...
@store3 = Store.find_by(id: 3)
puts "There are currently #{Store.count} stores"
puts "@store3 will be destroyed ==> #{@store3.name}"
puts "----------"
@store3.destroy
puts "#{Store.count} stores are left standing"
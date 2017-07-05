require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
require_relative './exercise_7'

puts "Exercise 8"
puts "----------"

@e4 = @store1.employees.create(first_name: "Otto4", last_name: "Hu", hourly_rate: 49)
puts Employee.find(@e4.id).password
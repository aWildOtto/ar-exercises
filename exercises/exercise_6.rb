require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Otto", last_name: "Hu", hourly_rate: 200)
@store2.employees.create(first_name: "Jack", last_name: "Hu", hourly_rate: 200)
@store2.employees.create(first_name: "Mike", last_name: "Hu", hourly_rate: 200)

puts Employee.pluck(:first_name)
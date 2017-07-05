require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
@store10 = Store.create(name: "OTTOMATIC", annual_revenue: 1000000, mens_apparel: true, womens_apparel: false)

puts @store10.errors.full_messages


@e1 = @store10.employees.create(first_name: "Otto1", last_name: "Hu", hourly_rate: 49)
@e2 = @store10.employees.create(first_name: "Jack2", last_name: "Wu", hourly_rate: 100)
@e3 = @store10.employees.create(first_name: "Mike3", last_name: "Hu", hourly_rate: 80) #this won't rollback since it's two queries

if(@e1.errors)
  puts @e1.errors.full_messages
end

@employeeX = Employee.create(first_name: "Mike3", last_name: "Hu", hourly_rate: 100)
puts @employeeX.errors.full_messages

puts "store10's id is #{@store10.id}"
puts Employee.all.where(store_id: @store10.id).count

# puts @employeeX.id
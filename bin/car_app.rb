require 'pry'
require_relative '../lib/car.rb'

num_tries = 2
puts "Welcome to car creater 2014"
puts

begin
  puts "Please enter a make (Ford, Toyota, GM):"
  make = gets.chomp.downcase

  puts "Please enter a model:"
  model = gets.chomp.downcase

  puts "Please enter a year:"
  year = gets.chomp.to_i

  new_car = Lab::Car.new(make, model, year)

rescue CarValidationErrors => error
  exit if num_tries == 0
  puts error.message
  puts "You have #{num_tries} remaining."
  puts
  num_tries -= 1
  retry
end

binding.pry

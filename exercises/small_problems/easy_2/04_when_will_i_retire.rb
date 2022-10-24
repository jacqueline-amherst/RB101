# Build a program that displays when the user will retire and how many years she has to work till retirement.

puts "What is your age?"
current_age = gets.chomp.to_i

puts "At what age would you like to retire?"
retirement_age = gets.chomp.to_i

remaining_years = (retirement_age - current_age)
current_year = Time.now.year
retirement_year = (current_year + remaining_years) 

puts "It's #{current_year}. You will retire in #{retirement_year}."
puts "You have only #{remaining_years} of work to go!"

# Write a program that asks the user to enter an integer greater than 0, 
# then asks if the user wants to determine the sum or product of all numbers between 1 and the entered integer.

loop do

  puts ">> Please enter an integer greater than 0:"
  number = gets.chomp.to_i

  puts ">> Enter 's' to compute the sum, 'p' to compute the product."
  operation = gets.chomp

  sum = (1..number).reduce(:+)
  product = (1..number).reduce(:*)


  if operation == 's'
    puts "The sum of the integers between 1 and #{number} is #{sum}."
    break
  elsif
    operation == 'p'
      puts "The product of the integers between 1 and #{number} is #{product}."
      break
  else
    puts ">> That is not a valid option. Please enter 's' for sum or 'p' for product."
  end
end

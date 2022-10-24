# Create a simple tip calculator. The program should prompt for a bill amount and a tip rate. 
# The program must compute the tip and then display both the tip and the total amount of the bill.

puts "What is the bill?"
bill_amount = gets.chomp.to_f

puts "What is the tip percentage?"
tip_percentage = gets.chomp.to_f / 100

tip = (bill_amount * tip_percentage).round(2)
total = (bill_amount + tip).round(2)

puts "The tip amount is #{tip}"
puts "The total amount is #{total}"
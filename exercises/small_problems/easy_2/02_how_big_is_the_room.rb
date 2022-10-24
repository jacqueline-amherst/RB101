# Build a program that asks a user for the length and width of a room in meters,
# then displays the area of the room in both square meters and square feet.

puts "Enter the length of the room in meters:"
length = gets.chomp.to_f

puts "Enter the width of the room in meters:"
width = gets.chomp.to_f

sq_meters = (length * width).round(2)
sq_feet = (sq_meters * 10.7639).round(2)

puts "The area of the room is #{sq_meters} square meters (#{sq_feet} square feet)."

# Added in the .round(2) after viewing solution, but all else is original
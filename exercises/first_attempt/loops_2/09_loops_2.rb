# First to Five:
#   The following code increments number_a and number_b by either 0 or 1.
# loop is used so that the variables can be incremented more than once, howerever, break stops the loop after the first iteration.
# Use next to modify the code so that the loop iterates until either number_a or number_b equals 5.
# Print "5 was reached!" before breaking out of the loop.

number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)
  next unless number_a == 5 || number_b == 5

  puts "5 was reached!"
  break
end

# Further Exploration:
#   and if/else statement could definitely be used instead. I actually forgot the stipulation that next must be used in my initial solution and used if/else instead.
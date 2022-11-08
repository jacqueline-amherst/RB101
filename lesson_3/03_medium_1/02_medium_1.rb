# Question 2:
# The result of the following statement will be an error:

puts "the value of 40 + 2 is " + (40 + 2)

# Why is this and what are two possible ways to fix this?

# Answer:
# The error is due to the fact that `(40 + 2)` results in an integer, which isn't automatically converted to a string.
# Here are two solutions:
# 1.

puts "the value of 40 + 2 is " + (40 + 2).to_s

# 2.

puts "the value of 40 + 2 is #{40 + 2}"
# Question 1:
# What would you expect the code below to print out?

numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

# Answer:
# I expect this code to print

1
2
2
3

# I expect this because Array#uniq is not a destructive method -- it returns a new array

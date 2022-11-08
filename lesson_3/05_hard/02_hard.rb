# Question 2:
# What is the result of the last line in the code below?

greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings

# Answer:
#   "hi there"
#   Because `<<` is a mutating method and `informal_greeting` points to an object contained in `greeting`

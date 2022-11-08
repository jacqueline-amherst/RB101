# Question 9:
# Consider these two simple methods:

def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

# What would be the return value of the following method invocation?

bar(foo)

# Answer:
#   'no'
#   `foo` will return 'yes'. `bar` then takes `foo` ('yes') as an argument and runs it through a ternary operator.

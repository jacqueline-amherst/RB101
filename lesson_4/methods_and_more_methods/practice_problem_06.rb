# What is the return value of the following statement. Why?

['ant', 'bear', 'caterpillar'].pop.size

# Return value = 11
# This is an example of method chaining. pop destructively deletes and returns the last item of the array.
# Since the return value of pop is 'caterpillar', size returns the number of characters in the string.
 
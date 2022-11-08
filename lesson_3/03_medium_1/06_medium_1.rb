# Question 6:
# What is the output of the following code?

answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8

# Answer:
#   This will output `34`. `answer` is never mutated and new_answer is never used.

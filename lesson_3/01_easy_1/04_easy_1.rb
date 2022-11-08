# Question 4:
# The Ruby Array class has several methods for removing items from the array.
# Two of them have very similar names. Let's see how they differ:

numbers = [1, 2, 3, 4, 5]

# What do the following method calls do (assume we reset `numbers` to the orginal array between method calls)?

numbers.delete_at(1) # Deletes element at index number 1, which is `2` -- [1, 3, 4, 5]
numbers.delete(1) # Deletes the element `1` -- [2, 3, 4, 5]

# Both of these methods are destructive
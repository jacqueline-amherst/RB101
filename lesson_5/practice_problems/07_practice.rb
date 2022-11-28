# Given this code, what would be the final values of a and b?
# Try to work this out without running the code.

a = 2
b = [5, 8]
arr = [a, b]

# arr = [2, [5, 8]]

arr[0] += 2 # => [4, [5, 8]]
arr[1][0] -= a # => [4, [3, 8]]

# a = 2
# b = [3, 8]

# since b and arr[1] point to the same array, any changes made to the elements in that array will effect both objects
# a doesn't change because `arr[0]` simply re-assigns the integer at that index.

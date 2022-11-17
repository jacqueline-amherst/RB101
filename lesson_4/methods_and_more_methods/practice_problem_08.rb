# How does take work? Is it destructive? How can we find out?

arr = [1, 2, 3, 4, 5]
arr.take(2)

# take is not destructive. It returns a new array containing the first (n) elements of self as specified by the argument.
# And of course, the documentation is the place to look!

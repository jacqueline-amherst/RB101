# a method that takes two arrays of numbers and returns the result of merging the arrays. 
# The elements of the first array should become the elements at the even indexes of the returned array, 
# while the elements of the second array should become the elements at the odd indexes.

=begin

Given two arrays of integers.

Initialize a new array to contain results of method.

Define a method that takes two arguments, one for each array, in order to iterate over both of them simultaneously.
  Initialize a variable, counter, set to 0, to count number of iterations.
  
  Until there are no elements left in array 1 or array 2 do the following:
    If counter is 0 or evenly divisible by 2,
      Push first element in array 1 to new array, then delete that element and add 1 to counter.
    If counter is not evenly divisible by 2,
      Push first element in array 2 to new array, then delete that element and add 1 to counter.
  
  Return new array, in which the elements from array 1 are the even indices, and the elements from array 2 are the odd indices.
  
=end
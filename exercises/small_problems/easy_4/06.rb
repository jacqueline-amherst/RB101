# Write a method that takes an Array of numbers, and returns an Array with the same number of elements, 
# and each element has the running total from the original Array.


=begin # This is my original solution

def running_total(array)
  totals = []
  sum = 0

  array.each do |num|
    sum = num + sum
    totals << sum
  end

  totals
end

=end

=begin # This is the more elegant given solution

def running_total(array)
  sum = 0
  array.map { |value| sum += value }
end

=end

def running_total(array)
  sum = 0
  array.each_with_object([]) do |num, arr|
    sum += num
    arr.push(sum)
  end
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []
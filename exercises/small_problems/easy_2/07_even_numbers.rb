# Print all even numbers from 1 to 99, inclusive, to the console, with each number on a separate line.

nums = (1..99)

nums.each { |num| puts num if num.even? }
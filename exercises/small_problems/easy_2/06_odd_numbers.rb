# Print all odd numbers from 1 to 99, inclusive, to the console, with each number on a separate line.

# nums = (1..99)

# nums.each { |num| puts num if num.odd? }

1.upto(99).each { |num| puts num if num % 2 != 0 } # further exploration

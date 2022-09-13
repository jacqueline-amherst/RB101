# Write a method that counts the number of occurrences of each element in a given array.

def count_occurrences(array)
  vehicles = array.uniq
  counter = 0
  occurences = {}

  loop do
    break if counter == vehicles.size
    count = array.count(vehicles[counter])

    occurences[vehicles[counter]] = count
    counter +=1
  end

  occurences
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

puts count_occurrences(vehicles)

# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2
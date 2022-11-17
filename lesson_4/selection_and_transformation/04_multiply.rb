def multiply(numbers, multiplier)
  counter = 0
  multiplied_numbers = []

  loop do
    break if counter == numbers.size
    
    current_number = numbers[counter]

    multiplied_numbers << current_number * multiplier
    counter += 1
  end

  multiplied_numbers
end

p multiply([1,2,3,4,5], 5)
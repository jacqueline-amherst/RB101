def select_fruit(hsh)
  fruits = {}
  counter = 0
  keys = hsh.keys

  loop do
    break if counter == keys.size
    current_key = keys[counter]
    if hsh[current_key] == 'Fruit'
      fruits[current_key] = 'Fruit'
    end
    counter += 1
  end

  fruits
end

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

p select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}
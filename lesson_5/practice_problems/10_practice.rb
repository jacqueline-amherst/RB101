# Given the following data structure and without modfying the original array,
# use the map method to return a new array identical in structure to the original but where the value of each integer is incremented by 1.

arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map do |hash|
  hash.each do |key, _|
    hash[key] += 1
  end
end

p arr

# I forgot one of the explicit rules of this prompt... modified the original array, oops...
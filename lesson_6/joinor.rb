# write a method called joinor that will produce the following result:

# 1. make a clone of arr, arr_clone
# 2. using Array#pop on arr_clone, set new variable, last_element, while simultaneously deleting from arr
# 3. iterate over each element of arr_clone (Enum#map!):
#   - convert element to string
#   - add a comma
# 4. join arr_clone using a space, add the word and last_element as a string.

def joinand(arr)
  arr_clone = arr.clone
  last_element = arr_clone.pop
  
  if arr_clone.size > 1
    arr_clone.map! { |num| num.to_s + ', ' }
    p "#{arr_clone.join}#{word} #{last_element}"
  elsif arr_clone.size == 1
    p "#{arr_clone[0]} #{word} #{last_element}"
  else
    p "#{last_element}"
  end
end

joinor([1])                   # => "1 or 2"
joinor([1, 2])                # => "1, 2, or 3"
joinor([1, 2, 3])          # => "1; 2; or 3"
joinor([1, 2, 3, 4, 'Jack'])   # => "1, 2, and 3"
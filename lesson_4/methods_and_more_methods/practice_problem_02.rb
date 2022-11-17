# How does count treat the block's return value? How can we find out?

['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end

# Check the documentation! 
# count performs selection based on the truthiness of the block and returns an integer representing the number of elements for which the block returns true.

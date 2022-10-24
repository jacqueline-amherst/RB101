# Write a method that takes an Array of Integers between 0 and 19, 
# and returns an Array of those Integers sorted based on the English words for each number:

NUMBERS = { 1 => 'one',         2 => 'two',           3 => 'three',           4 => 'four',            5 => 'five',
            6 => 'six',         7 => 'seven',         8 => 'eight',           9 => 'nine',            10 => 'ten',
            11 => 'eleven',     12 => 'twelve',       13 => 'thirteen',       14 => 'fourteen',       15 => 'fifteen',
            16 => 'sixteen',    17 => 'seventeen',    18 => 'eighteen',       19 => 'nineteen',       0 => 'zero'
          }

def alphabetic_number_sort(array)
  array.sort { |a, b| NUMBERS[a] <=> NUMBERS[b] }
end

p alphabetic_number_sort((0..19).to_a)

# the given solution takes a lot less effort than the one I came up with. There is something satisfying about orderly rows though.
# Also of note, I originally forgot to add 0 to my list, which I didn't realize until I had gotten thoroughly frustrated...
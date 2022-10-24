def swap(string)
  words = string.split
  new_words = []

  words.each do |word|
    letters = word.split('')
    first = letters.shift
    last = letters.pop
    letters.prepend(last)
    letters.append(first)
    new_words << letters.join
  end

  new_words.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
# p swap('Brisk buttercup bowl')
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'

# I had some issues with this code -- I thought my code was a bit repetitive and ugly.
# The given solution made me realize that I'm not taking full advantage of map. I default to calling each when map would be more appropriate.
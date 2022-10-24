# Write a method that takes a string argument and returns a new string that contains the value of the original string 
# with all consecutive duplicate characters collapsed into a single character. 
# You may not use String#squeeze or String#squeeze!.

def crunch(string)
  counter = 0
  letters = string.split('')

  loop do
    if letters[counter] == letters[counter + 1]
      letters.delete_at(counter + 1)
    else  
      counter += 1
    end
    break if counter == letters.size
  end
  string = letters.join
end

p crunch('ddaaiillyy ddoouubbllee') #== 'daily double'
p crunch('4444abcabccba') #== '4abcabcba'
p crunch('ggggggggggggggg') #== 'g'
p crunch('a') #== 'a'
p crunch('') #== ''
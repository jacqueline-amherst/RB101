# Question 8:
# given the hash below:

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

# Turn this into an array containing only two elements: Barney's name and Barney's number

flintstones = flintstones.select{|k,_| k == "Barney"}.to_a.flatten

p flintstones

# Was unaware of Hash#assoc. I will try to keep it in mind!
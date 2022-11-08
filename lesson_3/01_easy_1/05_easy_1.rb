# Question 5:
# Programmatically determine if 42 lies between 10 and 100
# Answer:

p (10..100).include?(42)

# I have to admit that, even after looking at the difference between Range#cover? and Range#include? I'm not 100% certain I understand the difference...
# However, my solution works!
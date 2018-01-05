# Make a function that can take any non-negative integer as a argument 
# and return it with its digits in descending order. 
# Essentially, rearrange the digits to create the highest possible number.

def descending_order(number)
  number.to_s.chars.sort.reverse.join.to_i
end

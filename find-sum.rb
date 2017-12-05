# Write a function findSum
# Upto and including n, this function will return the sum of all multiples of 3 and 5

def findSum(n)
  sum = 0

  n.times do 
    
    if n % 3 == 0 || n % 5 == 0
      sum += n 
    end
    
    n -= 1 
    
  end
  
  return sum

end

findSum(5)
# Should return 8 (3 + 5)
findSum(10)
# Should return 33 (3 + 5 + 6 + 9 + 10)
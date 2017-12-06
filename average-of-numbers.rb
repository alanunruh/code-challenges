# Write a method, that gets an array of integer-numbers 
# and returns an array of the averages of each integer-number and his follower, if there is one.


def average_of_numbers(array)
  new_array = []
  if array == nil || array.empty?
    return new_array
  end
  (0...array.length - 1).each do |index|
    new_array << (array[index + 1] + array[index]).to_f / 2
  end
  new_array
end
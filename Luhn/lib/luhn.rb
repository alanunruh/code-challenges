# Step 1 - break the credit card into it's individual digits. loop through the numbers
# Step 2 - Start from the right, double every second digit (i.e digit 2, 4, 6 etc.).
# Step 3 - If the doubled value is greater than or equal to 10, take the value and subtract 9 from it.
# Step 4 - Sum the digits.
# Step 5 - If the sum is divisible by 10 it's a valid number. Otherwise it's invalid.
require 'pry'

class Luhn
  
  def is_valid?(credit_card_numbers)
    # Set sum to 0 at the start
    sum = 0
    # Break the numbers into individual digits and reverse the list
    individual_numbers = credit_card_numbers.to_s.chars.reverse!
    # Loop through every number_with_index and add the digit to the sum
    individual_numbers.each_with_index do |number, index|
      # Everyother number starting with the first index
      if (index % 2 != 0)
        sum += digit.to_i * 2 >= 10 ? digit.to_i*2-9 : digit.to_i*2
        sum += digit.to_i 
      end
    end
 
    if (sum % 10) == 0
      return true
    else
      return false
    end
  end
end
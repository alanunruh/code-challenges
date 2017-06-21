# Step 1 - break the credit card into it's individual digits. loop through the numbers
# Step 2 - Start from the right, double every second digit (i.e digit 2, 4, 6 etc.).
# Step 3 - If the doubled value is greater than or equal to 10, take the value and subtract 9 from it.
# Step 4 - Sum the digits.
# Step 5 - If the sum is divisible by 10 it's a valid number. Otherwise it's invalid.
require 'pry'

module Luhn

  def self.is_valid?(credit_card_numbers)
    @numbers = credit_card_numbers
    @numbers.each_with_index do |number, index|
      far_right_value
        if index % 2 == 0
        number * 2
      end
    end
  end

  def far_right_value
    @numbers.size - 1
  end
end


# CC     4  1  9  4  5  6  0 3 8 5 0  0  8  5  0  4
# left   0  1  2  3  4  5  6 7 8 9 10 11 12 13 14 15
# right  15 14 13 12 11 10 9 8 7 6 5  4  3  2  1  0 

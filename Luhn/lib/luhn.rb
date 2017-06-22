# Step 1 - break the credit card into it's individual digits. loop through the numbers
# Step 2 - Start from the right, double every second digit (i.e digit 2, 4, 6 etc.).
# Step 3 - If the doubled value is greater than or equal to 10, take the value and subtract 9 from it.
# Step 4 - Sum the digits.
# Step 5 - If the sum is divisible by 10 it's a valid number. Otherwise it's invalid.
require 'pry'

class Luhn

  def self.is_valid?(credit_card_numbers)
    sum = 0
    individual_numbers = credit_card_numbers.to_s.chars.reverse!
    individual_numbers.each_with_index do |number, index|
      if index.even?  #if index % 2 == 0
        number * 2
        if number <= 10
            number = number - 9
        end
      end
      number.each do |digit|
        @total_number = sum+=digit
        if @total_number / 10
          puts true
        else
          puts false
        end
    end
  end
end


luhn = Luhn.new(23456789)
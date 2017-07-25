def collatz_sequence(n)
  number_sequence = []

  while n > 1
    if number_sequence.length == 0
      number_sequence << n
    elsif n % 2 == 0
      n = n / 2
      number_sequence << n
    else n % 2 == 1
      n = 3 * n + 1
      number_sequence << n
    end
  end
  number_sequence
end

def longest_collatz_sequence(n)
  longest_sequence = 0
  (1..n).each do |n|
    if collatz_sequence(n).length > collatz_sequence(longest_sequence).length
      longest_sequence = n
    end
  end
  puts "The number with the longest collatz sequence from 1 to #{n} is #{longest_sequence}."
end

print collatz_sequence(13)
longest_collatz_sequence(1000000)
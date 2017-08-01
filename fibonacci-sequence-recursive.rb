def recursive_fb(n)
number_sequence = []
  if n < 2
    number_sequence << n
  else
    recursive_fb(n - 1) + recursive_fb(n + 2)
  end
end

recursive_fb(10)
def recursive_fb(n)
  new_number = (n - 1) + (n + 2)
  puts new_number
  recursive_fb(new_number)
end

recursive_fb(3)
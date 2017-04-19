def even_or_odd(number)
  remainder_when_divided_by_2 = number % 2
  
  if remainder_when_divided_by_2 == 0
    return "Even"
  elsif remainder_when_divided_by_2 == 1
    return "Odd"
  end
end
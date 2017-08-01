def iterative_fb(n)
  number_sequence = []
  (0..n).each do |n|
    if n < 2
      number_sequence << n
    else
      number_sequence << number_sequence[-1] + number_sequence[-2]
    end
  end
  return number_sequence
end


def recursive_fb(n)
number_sequence = []
  if n < 2
    number_sequence << n
  else
    recursive_fb(n - 1) + recursive_fb(n + 2)
  end
end

require 'benchmark'
num = 35
Benchmark.bm do |x|
  x.report("recursive_fb") { recursive_fb(num) }
  x.report("iterative_fb")  { iterative_fb(num)  }
end
def iterative_fb(n)
    number_sequence = []
    (0..n).each do |n|
        if n < 2
            number_sequence << n
        else
            number_sequence << number_sequence[-1] + number_sequence[-2]
        end
    end
    puts number_sequence
end

iterative_fb(9)
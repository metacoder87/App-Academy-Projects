#RSPEC Exercise_1
#Part_1

def average(num_1, num_2)
    (num_1 + num_2) / 2.0
end

def average_array(arr)
    arr.inject(:+) / arr.length.to_f
end

def repeat(str, num)
    str * num
end

def yell(str)
    str.upcase + '!'
end

def alternating_case(str)
    alt = str.split(' ').each_with_index { |word, i| i % 2 == 0 ? word.upcase! : word.downcase! }
    alt.join(' ')
end

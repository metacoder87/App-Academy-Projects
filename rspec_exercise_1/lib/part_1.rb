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

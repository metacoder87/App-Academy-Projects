def add(num1, num2)
    return num1 + num2
end

def subtract (num1, num2)
    return num1 - num2
end

def sum(arr)
    tot = 0
    arr.each { |num| tot += num }
    return tot
end

def multiply(arr)
    return arr.inject(:*)
end

def power(num1, num2)
    return num1 ** num2
end

def factorial(num)
    nums = []
    if num > 0
        (1..num).each do |ele| 
                nums << ele
        end
    else return 0
    end
    #return nums
    return multiply(nums)
end


            # meta_coder (Gary Miller) =)
            #gmiller052611@gmail.com
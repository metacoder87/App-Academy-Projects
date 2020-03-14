# Write a method, coprime?(num_1, num_2), that accepts two numbers as args.
# The method should return true if the only common divisor between the two numbers is 1.
# The method should return false otherwise. For example coprime?(25, 12) is true because
# 1 is the only number that divides both 25 and 12.


def coprime?(num_1, num_2)
    common = [] 
    factors(num_1).each { |ele| factors(num_2).include?(ele) ? common << ele : nil }
    if common.length == 1 && common.include?(1)
        true 
    else false
    end
end

def factors(num)
    divs = []
    (1..num).map { |int| num % int == 0 ? divs << int : nil }
    divs
end

p coprime?(25, 12)    # => true
p coprime?(7, 11)     # => true
p coprime?(30, 9)     # => false
p coprime?(6, 24)     # => false

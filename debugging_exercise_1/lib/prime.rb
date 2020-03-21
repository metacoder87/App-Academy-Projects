# Debug this code to pass rspec! There are 2 mistakes to fix.

# Write a method, prime?, that accepts a number. It should return a boolean indicating whether or not the given number 
# is a prime. A prime number is only divisible by 1 and itself, it should have no other divisors.

require "byebug"

#prime(num) was missing the ?
def prime?(num)
    return false if num < 2
    
#the .each enumerable was getting stuck on 9 % 2 = 1 
    (2...num).none? do |factor|
        num % factor == 0
    end
end

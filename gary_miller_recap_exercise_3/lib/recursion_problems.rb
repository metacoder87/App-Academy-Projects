
    
    # Recursion Problems

 # Write a method multiply(a, b) that takes in two numbers 
 # and returns their product.

 # You must solve this recursively (no loops!)
 # You must not use the multiplication (*) operator

def multiply(a, b)
    return 0 if a == 0
    if a < 0
        -(multiply((-a) - 1, b) + b)
    else multiply(a - 1, b) + b
    end
end

 # The Lucas Sequence is a sequence of numbers. The first number of 
 # the sequence is 2. The second number of the Lucas Sequence is 1. 
 # To generate the next number of the sequence, we add up the previous 
 # two numbers. For example, the first six numbers of the sequence 
 # are: 2, 1, 3, 4, 7, 11, ...

 # Write a method lucasSequence that accepts a number representing 
 # a length as an arg. The method should return an array containing 
 # the Lucas Sequence up to the given length. Solve this recursively.

def lucas_sequence(length)
    return [2, 1] if length == 2
    return [2] if length == 1
    return [] if length == 0
    
    arr = lucas_sequence(length - 1)
    num = arr[- 1] + arr[- 2]
    arr << num
    arr
end

 # The Fundamental Theorem of Arithmetic states that every positive 
 # integer is either a prime or can be represented as a product of 
 # prime numbers.

 # Write a method prime_factorization(num) that accepts a number and 
 # returns an array representing the prime factorization of the given 
 # number. 
 
 # This means that the array should contain only prime numbers 
 # that multiply together to the given num. The array returned should 
 # contain numbers in ascending order. Do this recursively.

def prime_factorization(num)

end


    #   APP ACADEMY
    #   RSPEC EXERCISE 3
    #   PART 1

def is_prime?(num)
    if num < 2
        return false
    elsif num == 2
        return true
    else return (2...num).none? { |int| num % int == 0 }
    end
end

def nth_prime(num)
    top = num * 10
    primes = (2...top).select { |e| (2...e).none? { |i| e % i == 0 } }
        if num == 1
            return 2
        else primes[num - 1]
    end
end

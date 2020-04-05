
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

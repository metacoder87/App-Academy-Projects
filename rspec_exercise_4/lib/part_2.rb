


                #   APP ACADEMY
                #   RSPEC EXERCISE 4
                #   PART 2


def proper_factors(num)
    (1...num).select { |n| num % n == 0 }
end

def aliquot_sum(num)
    proper_factors(num).inject(:+)
end

def perfect_number?(num)
    num == aliquot_sum(num)
end

def ideal_numbers(n)
    nums = (1..1000).select { |num| perfect_number?(num) }
    nums.first(n)
end

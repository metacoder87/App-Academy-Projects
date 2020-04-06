


                #   APP ACADEMY
                #   RSPEC EXERCISE 4
                #   PART 2


def proper_factors(num)
    (1...num).select { |n| num % n == 0 }
end

def aliquot_sum(num)
    proper_factors(num).inject(:+)
end

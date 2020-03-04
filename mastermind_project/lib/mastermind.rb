require_relative "code"

class Mastermind
  
    def initialize(num)
        @secret_code = Code.random(num)
    end

    def print_matches(code)
        puts "exact matches #{ @secret_code.num_exact_matches(code) }"
        puts "near matches #{ @secret_code.num_near_matches(code) }"
    end
  
end

require_relative "code"

class Mastermind
  
  def initialize(num)
        @length = num 
        @secret_code = Code.random(num)
    end
  
end

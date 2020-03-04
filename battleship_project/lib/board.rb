class Board
  
  attr_reader :size

    def initialize(n)
        @grid = Array.new(n) { Array.new(n).fill(:N) }
        @size = n * n
    end
  
end

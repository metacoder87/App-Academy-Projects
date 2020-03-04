class Board
  
  attr_reader :size

    def initialize(n)
        @grid = Array.new(n) { Array.new(n).fill(:N) }
        @size = n * n
    end
  
    def [](pos)
        row, col = pos
        @grid[row][col]
    end
  
end

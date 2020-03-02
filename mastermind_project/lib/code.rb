class Code
  POSSIBLE_PEGS = {
    "R" => :red,
    "G" => :green,
    "B" => :blue,
    "Y" => :yellow
  }
  
  def self.valid_pegs?(arr)
    arr.all? { |char| POSSIBLE_PEGS.include?(char.upcase) }
  end
  
  attr_reader :pegs
  
  def initialize(pegs)
    if Code.valid_pegs?(pegs)
      @pegs = pegs.map { |peg| peg.upcase }
    else raise "Error"
    end
  end

end

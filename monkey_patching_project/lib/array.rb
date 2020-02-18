# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
  
  def span
    if self.length > 0
    self.max - self.min
    else nil
    end
  end
  
  def average
    if self.length > 0
        self.inject(:+) / self.length.to_f
    else nil
    end
  end
  
  def median
    if self.length.odd?
        self.sort[ self.length / 2 ]
    elsif self.length == 0 
        nil
    else arr = [self.sort[ self.length / 2 ], self.sort[ self.length.to_f / 2 - 1 ]]
        arr.average
    end
  end
  
  def counts
  hash = Hash.new()
    self.each { |ele|  hash[ele] = self.count(ele) }
  hash
  end
  
  def my_count(ele)
    if self.include?(ele)
    arr = self.select { |char| ele == char } 
    arr.length
    else 0
    end
  end
  
  def my_index(ele)
      self.find_index(ele)
  end
  
  def my_uniq
    self.counts.keys
  end
  
  def my_transpose
    self.first.zip(*self[1..-1])
  end 
  
end

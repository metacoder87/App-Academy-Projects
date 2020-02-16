# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
  def span
    if self.length > 0
    self.max - self.min
    else nil
    end
  end
end

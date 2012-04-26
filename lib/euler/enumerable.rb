module Enumerable
  def sum
    self.reduce(:+) || 0
  end
end

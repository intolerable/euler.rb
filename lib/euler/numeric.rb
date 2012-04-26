class Numeric
  def integer?
    self % 1 == 0
  end
  
  def C( r )
    self.factorial / ( r.factorial * (self-r).factorial)
  end
  
  def pandigital? ( range = (1..9), length = false )
    ( length ? self.to_s.length == range.to_a.size : true ) &&
    range.all? { |i| self.to_s.include? i.to_s }
  end
  
  def prime_divisors
    require 'mathn'
    @@prime_divisors ||= {}
    @@prime_divisors[self] ||= self.divisors.select(&:prime?)
  end
  
  def divisors( exclude_self = false )
    @@divisors ||= {}
    @@divisors[self] ||= (1..Math.sqrt(self)).select { |i|
      self % i == 0
    }.map { |i|
      [i,self / i]
    }.flatten.uniq.sort
    if exclude_self
      (@@divisors[self] - [self]) || [1]
    else
      @@divisors[self]
    end
  end
  
  def perfect?
    self.divisors(true).sum == self
  end
  
  def deficient?
    self.divisors(true).sum < self
  end
  
  def abundant?
    self.divisors(true).sum > self
  end
  
  def curious?
    self.to_s.each_char.map{|a| a.to_i.factorial}.reduce(:+) == self
  end
  
  def digits
    self.to_s.each_char.map(&:to_i)
  end
  
  def factorial
    self.downto(1).reduce(:*) || 0
  end
  
  def triangle
    self * ( self + 1 ) / 2
  end
end

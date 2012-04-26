class Fibonacci

  def Fibonacci.[]( n )
    require 'matrix'
    ((Matrix[[1,1],[1,0]]**(n.to_i-1)) [0,0]).to_i
  end
  
  def self.sequence( max )
    1.upto( max ).map do |n|
      self[n]
    end
  end
  
end

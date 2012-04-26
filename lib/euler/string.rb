class String
  def palindrome?
    self == self.reverse
  end
  
  def cipher
    ( self.to_i(36) - 9 ).to_s
  end
  
  def decipher
    ( self.to_i + 9 ).to_s(36)
  end
  
  def rotate ( *args )
    self.each_char.to_a.rotate(*args).join
  end
end

require 'euler'
require 'test/unit'

class StringTest < Test::Unit::TestCase

  def test_palindrome
    assert "racecar".palindrome?
    assert !"banana".palindrome?
  end
  
  def test_cipher_decipher
    assert_equal "helloworld", "helloworld".cipher.decipher
  end
  
  def test_rotate
    assert_equal "word".rotate, "ordw"
    assert_equal "word".rotate(2), "rdwo"
  end

end

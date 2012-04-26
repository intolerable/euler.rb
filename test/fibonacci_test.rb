require 'euler'
require 'test/unit'

class FibonacciTest < Test::Unit::TestCase

  def test_fibonacci
    assert_equal Fibonacci[5], 5
    assert_equal Fibonacci.sequence(6), [1,1,2,3,5,8]
  end

end

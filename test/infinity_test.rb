require 'euler'
require 'test/unit'

class InfinityTest < Test::Unit::TestCase
  
  def test_infinity
    assert_equal Infinity, Float::INFINITY
  end
  
end

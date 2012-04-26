require 'euler'
require 'test/unit'

class EnumerableTest < Test::Unit::TestCase

  def test_sum
    assert_equal [2,3,5,7].sum, 17
  end

end

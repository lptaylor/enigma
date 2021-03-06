require 'simplecov'
SimpleCov.start
require 'minitest/autorun'
require 'minitest/pride'
require './lib/offset'

class OffsetTest < Minitest::Test

  def test_it_exists
    offset = Offset.new("040318")

    assert_instance_of Offset, offset
  end

  def test_it_can_take_in_a_date
    offset = Offset.new("041018")

    assert_equal "041018", offset.date
  end

  def test_it_can_generate_the_offset
    offset = Offset.new("041018")
    offset.generate

    assert_equal [6,3,2,4], offset.generate
  end

  def test_it_can_get_a_array_from_a_squared_num
    offset = Offset.new("041018")
    expected = ["1", "6", "8", "2", "4", "7", "6", "3", "2", "4"]

    assert_equal expected, offset.get_squared_array
  end
end

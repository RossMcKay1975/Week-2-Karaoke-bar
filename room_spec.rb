require('minitest/autorun')
require('minitest/rg')
require_relative('../room')

class TestRoom < MiniTest::Test

  def setup
    @room = Room.new("Paul McCartney Suite", 7)
  end

  def test_room_name
    assert_equal("Paul McCartney Suite",@room.room_name)
  end

  def test_maximum_capacity
    assert_equal(7, @room.max_cap)
  end


end

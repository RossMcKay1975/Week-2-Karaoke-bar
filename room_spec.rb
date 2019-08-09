require('minitest/autorun')
require('minitest/rg')
require_relative('../room')

class TestRoom < MiniTest::Test

  def setup
    @room = ("Paul McCartney Suite")
  end

def test_add_song_to_room
  assert_equal("Paul McCartney Suite", @room)
end


end

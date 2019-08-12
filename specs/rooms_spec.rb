require('minitest/autorun')
require('minitest/rg')
require_relative('../rooms')
require_relative('../song')

class TestRoom < MiniTest::Test

  def setup
    @room1 = Room.new("Paul McCartney Suite", 7)
    @room2 = Room.new("The Charlatans Suite", 5)
    @room3 = Room.new("The Happy Mondays Suite", 4)
    @song = Song.new("Beetles","Hapiness Is a Warm Gun")
    @song2 = Song.new("Beetles","Back in the USSR")
    @song3 = Song.new("Beetles", "Sargent Peppers Lonely Hearts Club band")
  end

  def test_room_name
    assert_equal("Paul McCartney Suite",@room1.room_name)
  end

  def test_maximum_capacity
    assert_equal(7, @room1.max_cap)
  end

  def test_add_song_to_room1
      @room1.add_song_to_room1(@song)
      @room1.add_song_to_room1(@song2)
      assert_equal(2,@room1.count_songs_in_room1)
  end

  def test_add_song_to_room2
      @room2.add_song_to_room2(@song)
      @room2.add_song_to_room2(@song2)
      assert_equal(2,@room2.count_songs_in_room2)
  end

  def test_add_song_to_room3
      @room3.add_song_to_room3(@song)
      @room3.add_song_to_room3(@song2)
      assert_equal(2,@room3.count_songs_in_room3)
  end






end

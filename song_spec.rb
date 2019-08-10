require('minitest/autorun')
require('minitest/rg')
require_relative('../song')

class SongTest < MiniTest::Test

  def setup
    @song = Song.new("Beetles","Hapiness Is a Warm Gun")
    @song2 = Song.new("Beetles","Back in the USSR")
    # @song3 = ("Beetles", "Sargent Peppers Lonely Hearts Club band")
  end

  def test_song_has_artist
    assert_equal("Beetles", @song.artist())
  end

  def test_song_has_title
    assert_equal("Hapiness Is a Warm Gun", @song.title())
  end

  def test_their_is_multiple_songs
    assert_equal("Back in the USSR", @song2.title())
  end



end

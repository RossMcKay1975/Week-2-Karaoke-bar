require('minitest/autorun')
require('minitest/rg')
require_relative('../song')

class SongTest < MiniTest::Test

  def setup
    @song = Song.new("Beetles","Hapiness Is a Warm Gun")
    # @song2 = ("Beetles", "Back in the USSR")
    # @song3 = ("Beetles", "Sargent Peppers Lonely Hearts Club band")
  end

  def test song_has_artist
    assert_equal("Beetles", @song.artist())
  end

end

require("minitest/autorun")
require("minitest/rg")
require_relative("../song.rb")

class SongTest < MiniTest::Test

  def setup
    @song = Song.new("My Heart Will Go On", "Celine Dion")
  end

  def test_song_has_title()
    assert_equal("My Heart Will Go On", @song.title)
  end

  def test_song_has_artist()
    assert_equal("Celine Dion", @song.artist)
  end

end

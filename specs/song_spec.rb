require("minitest/autorun")
require("minitest/rg")
require_relative("../song.rb")

class SongTest < MiniTest::Test

  def setup
    @song = Song.new("My Heart Will Go On", "Celine Dion")
  end
end

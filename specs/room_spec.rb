require("minitest/autorun")
require("minitest/rg")
require_relative("../room.rb")


class RoomTest < MiniTest::Test

  def setup()
    @room = Room.new("Sound of Maritime")
  end
end

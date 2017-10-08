require("minitest/autorun")
require("minitest/rg")
require_relative("../room.rb")


class RoomTest < MiniTest::Test

  def setup()
    @room = Room.new("Sound of Maritime")
  end

  def test_room_has_name()
      assert_equal("Sound of Maritime", @room.name)
    end

end

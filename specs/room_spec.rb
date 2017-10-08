require("minitest/autorun")
require("minitest/rg")
require_relative("../room.rb")
require_relative("../guest.rb")

class RoomTest < MiniTest::Test

  def setup()
    @room = Room.new("Sound of Maritime")
    @guest = Guest.new("Pablito")
    @guests = []
  end

  def test_room_has_name()
      assert_equal("Sound of Maritime", @room.name)
  end

   def test_check_room_has_no_guests()
     assert_equal(0, @room.guest_count)
   end

   def test_guest_checked_in()
     actual = @room.guest_check_in(@guest)
     assert_equal(1, actual)
   end

   def test_guest_checked_out()
     @guests << @guest
     actual = @room.guest_check_out(@guest)
     assert_equal(0, actual)
   end


end

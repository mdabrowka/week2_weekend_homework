require("minitest/autorun")
require("minitest/rg")
require_relative("../room.rb")
require_relative("../guest.rb")
require_relative("../song.rb")

class RoomTest < MiniTest::Test

  def setup()
    @room = Room.new("Sound of Maritime", 6, 10, 0)
    @guest = Guest.new("Pablito", 200000, "La donna e mobile")
    @guest1 = Guest.new("Gustavo", 5, "La cucaracha")
    @guests = []
    @song = Song.new("My Heart Will Go On", "Celine Dion")
    @songs = []
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

   def test_room_has_no_songs()
     assert_equal(0, @room.song_count)
   end

   def test_add_song_to_room()
    actual = @room.add_song(@song)
    assert_equal(1, actual)
  end

   def test_guest_checked_in__takes_money()
     @room.guest_check_in(@guest)
     assert_equal(10, @room.till())
   end

   def test_guest_checked_in__cant_afford()
     @room.guest_can_afford(@guest1)
     assert_equal(0, @room.guest_count)
   end

   def test_room_has_capacity()
     actual = @room.capacity()
     assert_equal(6, actual)
   end

   def test_add_to_till()
     actual = @room.add_to_till(6)
     assert_equal(6, actual)
   end

end

require("minitest/autorun")
require("minitest/rg")
require("../guest.rb")

class TestGuest < MiniTest::Test

  def setup
    @guest = Guest.new("Cosima", 50, "My Hips don't lie")
  end

  def test_guest_has_name()
    assert_equal("Cosima", @guest.name)
  end

  def test_guest_has_money()
    assert_equal(50, @guest.money)
  end

  def test_guest_can_spend_money()
    actual = @guest.remove_money(12)
    assert_equal(38, @guest.money)
  end

  def test_guest_has_fave_song()
    assert_equal("My Hips don't lie", @guest.favourite_song)
  end

end

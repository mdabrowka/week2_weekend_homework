require("minitest/autorun")
require("minitest/rg")
require("../guest.rb")

class TestGuest < MiniTest::Test

  def setup
    @guest = Guest.new("Cosima")
  end

  def test_guest_has_name()
    assert_equal("Cosima", @guest.name)
  end

end

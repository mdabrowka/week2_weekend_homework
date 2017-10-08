require("minitest/autorun")
require("minitest/rg")
require("../guest.rb")

class TestGuest < MiniTest::Test

  def setup
    @guest = Guest.new("Cosima")
  end
end

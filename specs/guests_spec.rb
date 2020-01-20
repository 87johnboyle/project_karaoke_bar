require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../guests.rb')
require_relative('../songs.rb')
require_relative('../rooms.rb')
require_relative('../bar.rb')

class TestGuests < Minitest::Test

def setup

  @songs = Songs.new("Help")
  @rooms = Rooms.new("Tokyo", 4, 50, ["Yesterday", "Please Please Me"], ["Bill", "Ted"])
  @guests = Guests.new("John", 50, "Yesterday",)

end

def test_name
  assert_equal("John", @guests.name)
end

def test_cash
  assert_equal(50, @guests.cash)
end



# def test_fav_song
#   assert_equal("Woo!", @guests.fav_song)
# end

end

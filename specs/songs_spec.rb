require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../guests.rb')
require_relative('../songs.rb')
require_relative('../rooms.rb')

class TestSongs < Minitest::Test

def setup

  @songs = Songs.new("Help")
  @rooms = Rooms.new("Tokyo", 4, 50, ["Yesterday", "Please Please Me"], ["Bill", "Ted"])
  @guests = Guests.new("John", 50, "Help")

end

def test_song_name
assert_equal("Help", @songs.name)
end

end

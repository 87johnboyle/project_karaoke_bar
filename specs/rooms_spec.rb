require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../guests.rb')
require_relative('../songs.rb')
require_relative('../rooms.rb')

class TestRooms < Minitest::Test

  def setup
    @songs = Songs.new("Help")
    @rooms = Rooms.new("Tokyo", 4, 50, ["Yesterday", "Please Please Me"], ["Bill", "Ted"])
    @guests = Guests.new("John", 50, "Help")

  end

  def test_room_name
    assert_equal("Tokyo", @rooms.name)
  end

  def test_room_capacity
    assert_equal(4, @rooms.capacity)
  end

  def test_check_in
    @rooms.check_in(@guests, @rooms)
    assert_equal(3, @rooms.checked_in.count)
  end

  def test_check_out
    @rooms.check_in(@guests, @rooms)
    @rooms.check_out(@guests)
    assert_equal(2, @rooms.checked_in.count)
  end

  # def test_add_song
  #   @rooms.add_song("Help", @rooms)
  #   assert_equal(3, @rooms.songs.count)
  # end

end

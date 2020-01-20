class Rooms

require('pry')

  attr_reader :name, :capacity, :songs, :checked_in, :fee
  attr_writer :songs, :checked_in, :fee

  def initialize(name, capacity, fee, songs, checked_in)
    @name = name
    @capacity = capacity
    @songs = songs
    @checked_in = checked_in
    @fee = fee
  end

  def check_in(guest, room)
    if @checked_in.length < room.capacity &&
    if guest.cash >= @fee
      @checked_in.push(guest.name)
    end
  end
  end

  def check_out(guest)
        @checked_in.delete(guest.name)
  end

  def add_song(song, room)
    room.songs.push(song)
  end

end

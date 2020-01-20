class Guests

attr_reader :name, :favsong, :cash
attr_writer :cash

def initialize (name, cash, fav, tab)
  @name = name
  @cash = cash
  @fav = fav
  @tab = 0
end

# def fav_song
#   for room in @room.songs
#   if room.include?(@name.fav)
#     p "Woo!"
#   end
# end
# end

  end

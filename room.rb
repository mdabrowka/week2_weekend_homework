class Room

  attr_reader :name

  def initialize(name)
    @name = name
    @guests = []
    @songs = []
  end

  def guest_count()
    @guests.length()
  end

  def guest_check_in(new_guest)
    @guests << new_guest
    return guest_count
  end

 def guest_check_out(guest)
   @guests.delete(guest)
   return guest_count
 end

  def song_count()
   @songs.length()
  end

 def add_song(new_song)
    @songs << new_song
    return song_count
  end

end

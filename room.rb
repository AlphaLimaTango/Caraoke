class Room
  attr_reader :name, :cost, :max_capacity, :people_in_room, :song_library, :playlist

  def initialize(name, cost, max_capacity)
    @name = name
    @cost = cost
    @max_capacity = max_capacity
    @people_in_room = []
    @song_library = []
    @playlist = []
  end

  def guest_checks_in_to_room(guest)
    return @people_in_room << guest
  end

  def add_song_to_library(song)
    @song_library << song
  end

  def is_capacity_in_room_less_than_max?
    if @people_in_room.count >= @max_capacity
      return false
    else
      return true
    end
  end

  def copy_song_from_library_to_playlist(song)
    @playlist << song
  end

  def remove_guest_from_room(guest)
    @people_in_room.delete(guest)
  end

end

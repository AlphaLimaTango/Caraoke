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
    return @capacity < guest
  end


end

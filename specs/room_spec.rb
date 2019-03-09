require('minitest/autorun')
require('minitest/rg')
require_relative('../karaoke_bar')
require_relative('../guest')
require_relative('../room')
require_relative('../song')

class TestRoom < MiniTest::Test

  def setup
    @room_small = Room.new("Small", 10, 3)
    @room_medium = Room.new("Medium", 20, 4)
    @room_large = Room.new("Deluxe", 30, 5)

    @guest1 = Guest.new("Ronan", 57, 150, 50, "God is a Woman")
    @guest2 = Guest.new("Kelly", 25, 80, 20, "Without You")
    @guest3 = Guest.new("Sanjeep", 33, 50, 20, "My Neck, My Back")
    @guest4 = Guest.new("Edna", 49, 200, 70, "Black and Yellow")
    @guest5 = Guest.new("Katy", 36, 40, 30, "99 Problems")
    @guest6 = Guest.new("Olga", 63, 100, 10, "Superbass")

    @song1 = Song.new("Kanye West", "Stronger")
    @song2 = Song.new("Ariana Grande", "God is a Woman")
    @song3 = Song.new("Mary J. Blige", "Without You")
    @song4 = Song.new("Jay-Z", "99 Problems")
    @song5 = Song.new("Nicki Minaj", "Superbass")
    @song6 = Song.new("Taylor Swift", "Love Story")
    @song7 = Song.new("Sean Kingston", "Beautiful Girls")
    @song8 = Song.new("Charlie XCX", "1999")
  end

  def test_does_room_have_class
    assert_equal(Room, @room_small.class)
  end

  def test_does_room_have_cost
    assert_equal(30, @room_large.cost)
  end

  def test_add_song_to_library
    @room_large.add_song_to_library(@song8)
    assert_equal([@song8], @room_large.song_library)
  end

  def test_is_capacity_of_room_less_than_max
    @room_large.guest_checks_in_to_room(@guest1)
    assert_equal(true, @room_large.is_capacity_in_room_less_than_max?)
  end

  def test_guest_choose_song
    @room_small.add_song_to_library(@song1)
    @room_small.add_song_to_library(@song2)
    @room_small.copy_song_from_library_to_playlist(@song2)
    assert_equal([@song2], @room_small.playlist)
  end

  def test_remove_guest_from_room
    @room_small.remove_guest_from_room(@guest1)
    assert_equal(0, @room_small.people_in_room.count)
  end



end

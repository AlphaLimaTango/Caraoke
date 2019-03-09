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
  end

  def test_does_room_have_class
    assert_equal(Room, @room_small.class)
  end

  def test_does_room_have_cost
    assert_equal(30, @room_large.cost)
  end




end

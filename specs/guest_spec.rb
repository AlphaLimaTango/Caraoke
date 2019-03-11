require('minitest/autorun')
require('minitest/rg')
require_relative('../karaoke_bar')
require_relative('../guest')
require_relative('../room')
require_relative('../song')
require_relative('../drink')

class TestGuest < MiniTest::Test

  def setup
    @karaoke_bar = KaraokeBar.new("Supercube", 15, 500)

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

    @drink1 = Drink.new("Vodka", 10, 10)
    @drink2 = Drink.new("Gin", 15, 10)
    @drink3 = Drink.new("Beer", 5, 5)
  end

  def test_does_guest_class_work
    assert_equal(Guest, @guest1.class)
  end

  def test_does_guest_have_name
    assert_equal("Ronan", @guest1.name)
  end

  def test_does_guest_have_age
      assert_equal(57, @guest1.age)
  end

  def test_does_guest_have_cash_in_wallet
    assert_equal(80, @guest2.cash_in_wallet)
  end

  def test_pay_entry_to_lounge
    @guest1.pay_entry_to_lounge
    assert_equal(135, @guest1.cash_in_wallet)
  end

  def test_pay_room_fee
    @guest1.pay_room_fee(@room_small)
    assert_equal(140, @guest1.cash_in_wallet)
  end

  def test_guest_sing
    assert_equal("Do re me fa so la ti do", @guest1.sing)
  end

  def test_guest_cheer
    assert_equal("Yaldi!", @guest1.cheer)
  end

  def test_buy_drink
    @guest1.buy_drink(@drink2)
    assert_equal(60, @guest1.drunkenness)
  end

end

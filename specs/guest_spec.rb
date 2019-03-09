require('minitest/autorun')
require('minitest/rg')
require_relative('../karaoke_bar')
require_relative('../guest')
require_relative('../room')
require_relative('../song')


class TestGuest < MiniTest::Test

  def setup
    @karaoke_bar = KaraokeBar.new("Supercube", 15, 500)

    @guest1 = Guest.new("Ronan", 57, 150, 50, "God is a Woman")
    @guest2 = Guest.new("Kelly", 25, 80, 20, "Without You")

    @room_small = Room.new("Small", 10, 3)
    @room_medium = Room.new("Medium", 20, 4)
    @room_large = Room.new("Deluxe", 30, 5)
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
end

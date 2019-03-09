require('minitest/autorun')
require('minitest/rg')
require_relative('../karaoke_bar')
require_relative('../guest')
require_relative('../room')
require_relative('../song')

class TestKaraokeBar < MiniTest::Test

  def setup
    @karaoke_bar = KaraokeBar.new("Supercube", 15, 500)

    @guest1 = Guest.new("Ronan", 57, 150, 50, "God is a Woman")
    @guest2 = Guest.new("Kelly", 25, 80, 20, "Without You")

    @room_small = Room.new("Small", 10, 3)
    @room_medium = Room.new("Medium", 20, 4)
    @room_large = Room.new("Deluxe", 30, 5)
  end

  def test_does_karaoke_bar_class_work
    assert_equal(KaraokeBar, @karaoke_bar.class)
  end

  def test_does_karaoke_bar_have_name
    assert_equal("Supercube", @karaoke_bar.name)
  end

  def test_does_karaoke_bar_have_entry_fee
    assert_equal(15, @karaoke_bar.entry_fee)
  end

  def test_does_karaoke_bar_have_cash_n_till
  assert_equal(500, @karaoke_bar.cash_in_till)
  end

  def test_check_in_guest_to_lounge
    @karaoke_bar.people_in_lounge << @guest1
    assert_equal([@guest1], @karaoke_bar.people_in_lounge)
  end

  def test_cash_in_till_increases_as_guest_is_checked_in_to_lounge
    @karaoke_bar.increase_cash_in_till_by_entry_fee_to_lounge
    assert_equal(515, @karaoke_bar.cash_in_till)
  end

  def test_check_guest_into_karaoke_room
    @karaoke_bar.check_guest_into_karaoke_room(@guest1, @room_medium)
    assert_equal([], @karaoke_bar.people_in_lounge)
  end

  def test_check_till_increases_by_karaoke_room_cost
    @karaoke_bar.increase_cash_in_till_by_room_cost(@room_medium)
    assert_equal(520, @karaoke_bar.cash_in_till)
  end

  def test_remove_guest_from_karaoke_room
    @karaoke_bar.check_out_guest_from_karaoke_room(@guest1, @room_medium)
    assert_equal([@guest1], @karaoke_bar.people_in_lounge)
  end

end

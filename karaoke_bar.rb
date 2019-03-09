class KaraokeBar
  attr_reader :name, :entry_fee, :cash_in_till, :people_in_lounge

  def initialize(name, entry_fee, cash_in_till)
    @name = name
    @entry_fee = entry_fee
    @cash_in_till = cash_in_till
    @people_in_lounge = []
  end

  def increase_cash_in_till_by_entry_fee_to_lounge
    @cash_in_till += 15
  end

  def check_guest_into_karaoke_room(guest, room)
    @people_in_lounge.delete(guest)
  end

  def increase_cash_in_till_by_room_cost(room)
    @cash_in_till += room.cost
  end

  def check_out_guest_from_karaoke_room(guest, room)
    # room.people_in_room.delete(guest)
    @people_in_lounge << guest
  end

end

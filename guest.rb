class Guest
  attr_reader :name, :age, :cash_in_wallet, :drunkenness

  def initialize(name, age, cash_in_wallet, drunkenness, fav_song)
    @name = name
    @age = age
    @cash_in_wallet = cash_in_wallet
    @drunkenness = drunkenness
    @fav_song = fav_song
  end

  def pay_entry_to_lounge
    return @cash_in_wallet -= 15
  end

  def pay_room_fee(room_name)
    @cash_in_wallet -= room_name.cost
  end

  def sing
    return "Do re me fa so la ti do"
  end

  def cheer
    return "Yaldi!"
  end
end

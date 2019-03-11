require('minitest/autorun')
require('minitest/rg')
require_relative('../drink')
require_relative('../karaoke_bar')
require_relative('../guest')
require_relative('../room')

class TestDrink < MiniTest::Test

  def setup
    @drink1 = Drink.new("Vodka", 10, 10)
    @drink2 = Drink.new("Gin", 15, 10)
    @drink3 = Drink.new("Beer", 5, 5)
  end

  def test_check_drink_class_works
    assert_equal(Drink, @drink1.class)
  end

  def test_drink_has_name
    assert_equal("Vodka", @drink1.name)
  end

  def test_drink_cost
    assert_equal(15, @drink2.cost)
  end

  def test_drink_alcohol_level
    assert_equal(5, @drink3.alcohol_level)
  end

end

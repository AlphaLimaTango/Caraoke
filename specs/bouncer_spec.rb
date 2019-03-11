require('minitest/autorun')
require('minitest/rg')
require_relative('../bouncer')

class TestBouncer < MiniTest::Test

  def setup
    @bouncer = Bouncer.new("Enrique")
  end

  def test_bouncer_class
    assert_equal(Bouncer, @bouncer.class)
  end

  def test_bouncer_name
    assert_equal("Enrique", @bouncer.name)
  end

end

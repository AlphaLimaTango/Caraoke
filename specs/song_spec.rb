require('minitest/autorun')
require('minitest/rg')
require_relative('../karaoke_bar')
require_relative('../guest')
require_relative('../room')
require_relative('../song')

class TestRoom < MiniTest::Test

  def setup
    @song1 = Song.new("Kanye West", "Stronger")
    @song2 = Song.new("Ariana Grande", "God is a Woman")
  end

  def test_check_song_class
    assert_equal(Song, @song2.class)
  end

  def test_check_song_artist
    assert_equal("Kanye West", @song1.artist)
  end

  def test_check_song_title
    assert_equal("Stronger", @song1.title)
  end

end

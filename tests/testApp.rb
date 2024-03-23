require 'minitest/autorun'
require_relative '../player.rb'

class PlayerTest < Minitest::Test
  def test_player
  player1 = Player.new("Adolfo",21,"RB",100000)
 #Test the about method whether the string will follow the structure I made in the about method
  assert_equal "This is Adolfo '21', plays in the RB position costs $100000.00", player1.about(),"Player about method failed"
  end
end

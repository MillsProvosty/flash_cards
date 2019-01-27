require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/deck'
require './lib/turn'



class TurnTest < Minitest::Test
  def test_does_turn_exist
      card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
      turn = Turn.new("Juneau", card)
      assert_instance_of Turn, turn
  end
end

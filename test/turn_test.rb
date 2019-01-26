require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/turn'
require "pry"


class TurnTest < Minitest::test
  def does_turn_exist
      card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
     turn = Turn.new("Juneau", card)
  end
end

binding.pry

require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require 'pry'

class CardTest < Minitest:: Test
  def test_card_exists
    @card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    assert_instance_of Card, @card
  end

  def setup
    @card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
  end

  def test_card_has_attributes
    assert_equal "What is the capital of Alaska?", @card.question
    assert_equal "Juneau", @card.answer
    assert_equal :Geography, @card.category
  end
end

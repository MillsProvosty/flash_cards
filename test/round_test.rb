require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/turn'
require './lib/deck'
require './lib/round'
require 'pry'

class RoundTest < Minitest::Test
  def test_round_exists
    @round = Round.new(@deck)
    assert_instance_of Round, @round
  end

  def setup
    @card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    @card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    @card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
    @cards = [@card_1, @card_2, @card_3]
    @deck = Deck.new([@card_1, @card_2, @card_3])
    @round = Round.new(@deck)
  end

  def test_deck_returns_deck
    assert_equal @deck, @round.deck
  end

  def test_turns_begins_with_empty_array
    assert_equal [], @round.turns
  end

  def test_current_card_returns_correctly
    assert_equal @card_1, @round.current_card
  end

  def test_take_turn_adds_to_turns_array
    new_turn_1 = @round.take_turn("Juneau")
    assert_equal new_turn_1, @round.turns.last
    assert_equal true, new_turn_1.correct?
    new_turn_2= @round.take_turn("Venus")
    assert_equal new_turn_2, @round.turns.last
    assert_equal false, new_turn_2.correct?
    new_turn_3 = @round.take_turn("North north west")
    assert_equal new_turn_3, @round.turns.last
    assert_equal true, new_turn_3.correct?
  end

  def test_number_correct_returns_1
    new_turn_1 = @round.take_turn("Juneau")
    assert_equal 1, @round.number_correct
  end

  def test_number_correct_by_category
    new_turn_1 = @round.take_turn("Juneau")
    new_turn_2 = @round.take_turn("Venus")
    assert_equal [new_turn_1, new_turn_2 ], @round.turns
    assert_equal true, new_turn_1.correct?
    assert_equal 1, @round.number_correct_by_category(:Geography)
    assert_equal 0, @round.number_correct_by_category(:STEM)
  end

  def test_percent_correct
    new_turn_1 = @round.take_turn("Juneau")
    new_turn_2 = @round.take_turn("Venus")
    assert_equal [new_turn_1, new_turn_2], @round.turns
    assert_equal 50.0, @round.percent_correct
  end

  def test_turns_by_category
    new_turn_1 = @round.take_turn("Juneau")
    new_turn_2 = @round.take_turn("Venus")
    assert_equal 2, @round.turns_by_category(:Geography)
  end

  def test_percent_correct_by_category
    new_turn_1 = @round.take_turn("Juneau")
    new_turn_2 = @round.take_turn("Venus")
    assert_equal 50.0, @round.percent_correct_by_category(:Geography)
    assert_equal 0.0,
    @round.percent_correct_by_category(:STEM)
  end
end

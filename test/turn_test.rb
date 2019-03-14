require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/turn'
require 'pry'

class TurnTest < Minitest::Test
  def test_turn_exists
    @turn = Turn.new("Juneau", @card_1)
    assert_instance_of Turn, @turn
  end

  def setup
    @card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    @turn = Turn.new("Juneau", @card_1)
  end

  def test_turn_has_attributes
    assert_equal @card_1, @turn.card
    assert_equal "Juneau", @turn.guess
  end

  def test_correct_returns_true_or_false
    assert @turn.correct?
  end

  def test_feedback_returns_correct_feedback
    assert_equal "Correct!", @turn.feedback
  end

  def test_feedback_can_return_incorrect_feedback
    @card_2 = Card.new("Which planet is closest to the sun?", "Mercury", :STEM)
    @turn_2 = Turn.new("Saturn", @card_2)
    assert_equal @card_2, @turn_2.card
    assert_equal "Saturn", @turn_2.guess
    assert_equal false, @turn_2.correct?
    assert_equal "Incorrect.", @turn_2.feedback
  end
end

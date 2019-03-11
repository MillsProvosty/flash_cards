require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/turn'
require 'pry'

class TurnTest < Minitest::Test
  def test_turn_exists
    @turn = Turn.new("Juneau", @card)
    assert_instance_of Turn, @turn
  end

  def setup
    @card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    @turn = Turn.new("Juneau", @card)
  end

  def test_turn_has_attributes
    assert_equal @card, @turn.card
    assert_equal "Juneau", @turn.guess
  end

  def test_correct_returns_true_or_false
    assert @turn.correct?
  end

  def test_feedback_returns_correct_feedback
    assert_equal "Correct!", @turn.feedback
  end
end

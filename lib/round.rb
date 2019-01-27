require './lib/card'
require './lib/deck'
require './lib/round'
require './lib/turn'

class Round
  #defi tab
attr_reader :turns, :deck, :card, :number_correct
  def initialize(deck)
    @deck = deck
    @turns = [] #no argument bc empty array
    @number_correct = 0
  end

  def current_card
    @deck.cards.first
  end

  def take_turn(guess)
    turn = Turn.new(guess, current_card)
  @turns << turn
  @deck.cards.shift
  return turn
  end

  def number_correct
    @turns.map do |turn|
      turn.correct?
      @number_correct += 1
    end
      return @number_correct
  end

def test_number_correct_by_category
end 

end
end

require './lib/card'
require './lib/deck'
require './lib/round'
require './lib/turn'

class Round
  #defi tab
attr_reader :turns, :deck, :card
  def initialize(deck)
    @deck = deck
    @turns = [] #no argument bc empty array
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

end

require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/deck'
require './lib/turn'

class Deck
attr_reader :cards
  def initialize(cards)
    @cards = cards
    #@ is the instance vatriable
  end

  def count
    @cards.length
  end

 #  def card_in_category(category)
 #    card.category == :STEM
 #    p card
 # end
end

require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/deck'
require './lib/turn'

class Deck
attr_reader :cards, :count, :category
  def initialize(cards, count, category)
    @cards = cards
    @count = count
    @id_card_category = []
  end

def id_card_category
     id_card_category = []
     deck.find_all do |x|
  #name the new object and load it
       p card.category == x
       x << id_category
 end
end

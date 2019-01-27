
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

  def cards_in_category(category)
      cards.find_all do |card|
        #singular of what you're enumerating |pipes|
      card.category == category
      #calling .category (est. card.rb) on card object,
      #match argument entered in the test
    end
 end
end

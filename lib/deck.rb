class Deck
  attr_reader :cards
  def initialize(cards)
    @cards = cards
  end

  def count
    @cards.count
  end

  def cards_in_category(category)
    cards_category = []
    @cards.map do |card|
      if card.category == category
        cards_category << card
      end
    end
    return cards_category
  end
end

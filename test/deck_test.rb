require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/deck'
require './lib/turn'
require 'pry'
class DeckTest < Minitest::Test
    def test_is_there_a_deck
        cards = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
        deck = Deck.new(cards)

        #object
        assert_instance_of Deck, deck
    end

    def test_cards_are_in_the_deck
        card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
        card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
        card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
        cards = [card_1, card_2, card_3]
        deck = Deck.new(cards)
      assert_equal 3, deck.count
    end

    def test_count_cards_in_deck
      card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
      card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
      card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
      cards = [card_1, card_2, card_3]
      deck = Deck.new(cards)
      deck.count
    assert_equal 3, deck.count
   end

   def test_card_in_category
   end
end

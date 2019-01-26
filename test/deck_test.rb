require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/deck'
require './lib/turn'
require "pry"

class DeckTest < Minitest::Test
    def is_there_a_deck
        deck = Deck.new(deck)
        assert_instance_of Deck, deck
    end

    def cards_are_in_the_deck
      cards = [card_1, card_2, card_3]
        card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
        card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
        card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
      assert_equal [card_1, card_2, card_3] , cards
    end

   def how_many_cards_in_deck
     count = cards.count
     assert_equal 3, cards
   end
  end

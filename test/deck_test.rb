require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/deck'
require './lib/turn'
require "pry"

class DeckTest < Minitest::Test

    def is_there_a_deck
      deck = Deck.new[card_1, card_2, card_3]
    end
end

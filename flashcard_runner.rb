require './lib/card'
require './lib/turn'
require './lib/deck'
require './lib/round'
require 'pry'

@card_1 = Card.new("What was the first National Park in the United States: Yellowstone, Grand Canyon or Yosemite?", "Yellowstone", :National_Parks)
@card_2 = Card.new("What national park has banned nearly all vehicles from its roads during peak season: Denali, Zion, Glacier", "Zion", :National_Parks)
@card_3 = Card.new("The Great Sand Dunes are the newest National Park in the US: True or False?", "True", :Local)
@card_4 = Card.new("What team got cheated out of playing the 2019 Super Bowl due to a bad call in the playoffs: Broncos, Saints, Cheifs?", "Saints", :Sports)
@card_5 = Card.new("What ice-cream shop has the best ice cream in Denver: Nuggs, Little Man, Sweet Action", "Nuggs", :Local)

@cards = [@card_1, @card_2, @card_3, @card_4, @card_5]
@deck = Deck.new([@card_1, @card_2, @card_3, @card_4, @card_5])
@round = Round.new(@deck)


def play_game
  puts "Welcome! You're playing with 10 cards\n-------------------------------------------------"
  loop do
    if  @round.turns.length < 5
      puts "#{@deck.cards.first.question}"
      @round.take_turn(gets.chomp)
      puts "#{@round.turns.last.feedback}"
    elsif @round.turns.length >= 5
      puts "****** Game over! ******"

      puts "You had #{@round.number_correct} guesses correct out of #{@round.turns.length} total guesses for a final score of #{@round.percent_correct} %."

      puts "National Parks =  #{@round.percent_correct_by_category(:National_Parks)} % correct\nLocal = #{@round.percent_correct_by_category(:Local)} % correct\nSports = #{@round.percent_correct_by_category(:Sports)} % correct"
      puts "Thank you for playing!"
      break
    end
  end
end

play_game

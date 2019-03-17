require './lib/card'
require './lib/turn'
require './lib/deck'
require './lib/round'
require 'pry'

@card_1 = Card.new("What was the first National Park in the United States: Yellowstone, Grand Canyon or Yosemite?", "Yellowstone", :National_Parks)
@card_2 = Card.new("What national park has banned nearly all vehicles from its roads during peak season: Denali, Zion, Glacier", "Zion", :National_Parks)
@card_3 = Card.new("The Great Sand Dunes are the newest National Park in the US: True or False?", "True", :Local)
@card_4 = Card.new("How many keys are on a piano: 120, 64, 88?", "88", :Music)
@card_5 = Card.new("What team got cheated out of playing the 2019 Super Bowl due to a bad call in the playoffs: Broncos, Saints, Cheifs?", "Saints", :Sports)
@card_6 = Card.new("How many families of instruments are recognized in Western music: 5, 4, 3?", "5", :Music)
@card_7 = Card.new("Translated from German, this member of the percussion section means 'bell play': Ringspringer, Ringenbelle, Glockenspiel?", "Glockenspiel", :Music)
@card_8 = Card.new("Which of these musical forms is the odd one out: Round, Rondo, Fugue, Cannon?", "Rondo", :Music)
@card_9 = Card.new("What ice-cream shop has the best ice cream in Denver: Nuggs, Little Man, Sweet Action", "Nuggs", :Local)
@card_10 = Card.new("Where can you find a bunch of delirious students, pale from wasting away in a basement, madened by object oriented programming?", "Turing", :Local)
@cards = [@card_1, @card_2, @card_3, @card_4, @card_5, @card_6, @card_7, @card_8, @card_9, @card_10]
@deck = Deck.new([@card_1, @card_2, @card_3, @card_4, @card_5, @card_6, @card_7, @card_8, @card_9, @card_10])
@round = Round.new(@deck)


def play_game
  puts "Welcome! You're playing with 10 cards\n-------------------------------------------------"
  loop do
    if  @round.turns.length < 10
      puts "#{@deck.cards.first.question}"
      @round.take_turn(gets.chomp)
      puts "#{@round.turns.last.feedback}"
    elsif @round.turns.length >= 10
      puts "****** Game over! ******"

      puts "You had #{@round.number_correct} guesses correct out of #{@round.turns.length} total guesses for a final score of #{@round.percent_correct}"

      puts "National Parks = #{@round.percent_correct_by_category(:National_Parks)}  % correct!\nLocal = #{@round.percent_correct_by_category(:Local)} % correct!\nMusic = #{@round.percent_correct_by_category(:Music)} % correct!\nSports = #{@round.percent_correct_by_category(:Sports)} % correct!"
      puts "Thank you for playing!"
      break
    end
  end
end

play_game




  #access deck
  #show first cards answer
  #get a guess from the user
  #if correct, put correct, else
  #go to next card
  #repeat until no cards are left
  #run the percentage

#until deck has gone through all cards, # whatever....



# This is card number 1 out of 4.
# Question: What is 5 + 5?

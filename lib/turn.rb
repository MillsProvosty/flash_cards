class Turn
  attr_reader :guess, :card
  def initialize(guess, card)
    @guess = guess
    @card = card
  end

  def correct?
    @guess == card.answer?
  end

  def feedback
    if answer == true
      puts "Correct!"

    else answer == false
      puts "Incorrect"
    end
  end
end

require 'pry'
binding.pry

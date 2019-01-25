require 'pry'

class Turn
  attr_reader :guess, :card
  def initialize(guess, card)
    @guess = guess
    @card = card
    binding.pry
  end

  def correct?
    @guess == card.answer
    binding.pry 
  end

end

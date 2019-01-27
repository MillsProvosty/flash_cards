
class Turn
  attr_reader :guess, :card
  def initialize(string, card)
    @guess = string
    @card = card
  end

  def correct?
    @guess == card.answer
  end

  def feedback
    if correct? == true
      #without @ on guess its a local var. not method that pulls info
       "Correct!"

    else
       "Incorrect"
    end

  end
end

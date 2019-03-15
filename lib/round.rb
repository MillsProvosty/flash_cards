class Round
  attr_reader :deck,
              :turns,
              :correct_answers,
              :incorrect_answers
  def initialize(deck)
    @deck = deck
    @turns = []
    @correct_answers = []
    @incorrect_answers = []
  end

  def current_card
    @deck.cards.first
  end

  def take_turn(guess)
    new_turn = Turn.new(guess, current_card)
      @turns << new_turn
      if @turns.first.guess != current_card.answer
        @incorrect_answers << new_turn
      elsif @turns.first.guess == current_card.answer
        @correct_answers << new_turn
      end
      @deck.cards.rotate!
    return new_turn

  end

  def number_correct
    @correct_answers.length
  end

  def number_correct_by_category(category_given)
    numbers_correct = 0

      if @correct_answers[0].card.category == (category_given)
          numbers_correct += 1
        else
          0
      end
  end

  def percent_correct
    ((number_correct / @turns.length.to_f ) * 100)
  end
end

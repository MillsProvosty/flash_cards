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

      @turns.each do |turn|
        if turn.guess != current_card.answer
          @incorrect_answers << new_turn
        elsif turn.guess == current_card.answer
          @correct_answers << new_turn
        end
      end 
      @deck.cards.rotate!
    return new_turn
  end

  def number_correct
    @correct_answers.length
  end

  def number_correct_by_category(category_given)
    numbers_correct = 0
      @correct_answers.sum do |correct_answer|
      if correct_answer.card.category == (category_given)
          numbers_correct += 1
        else
          0
      end
    end
  end

  def percent_correct
    ((number_correct / @turns.length.to_f ) * 100)
  end

  def turns_by_category(category_arg)
    category_turns = 0
    @turns.sum do |turn|
      turn.card.category == category_arg
        category_turns += 1
    end
    category_turns
  end


  def percent_correct_by_category(category_given)
    ((number_correct_by_category(category_given).to_f / turns_by_category(category_given)) * 100)
  end
end

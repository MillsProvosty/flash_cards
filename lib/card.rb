
require './lib/card'
require './lib/deck'
require './lib/turn'


class Card
  attr_reader :question, :answer, :category
  #attr_reader makes your instance variable a method!
  def initialize(question, answer, category)
    @question = question
    @answer = answer
    @category = category
  end
end

require_relative 'card'
require_relative 'deck'

class Hand #< Array
  attr_reader :hand
  def initialize(hand)
    @hand = hand
    @score
  end

  def hand
    @hand
  end

  def ace_count
    count = 0
    @hand.each do |card|
      if card.value == 11
        count +=1
      end
    end
  count
  end

  def gross_score
    score = 0
    @hand.each do |card|
      score += card.value
    end
    score
  end

  def score
    count = ace_count
    score = gross_score
    while count > 0 && score > 21
      count -= 1
      score -= 10
    end
    score
  end

  def add_card(card)
    @hand << card
  end
end




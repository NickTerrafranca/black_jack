# This class will need to determine the best score
# based on the cards that have been dealt.

require_relative 'card'
require_relative 'deck'

class Hand
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

  def score
    score = 0
    @hand.each do |card|
      score += card.value
    end
    score
  end
end




class Card
  attr_reader :rank, :suit
  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def value
    face_cards = ['J', 'Q', 'K']
    if face_cards.include?(@rank)
      10
    elsif @rank == 'A'
      11
    else
      @rank.to_i
    end
  end
end


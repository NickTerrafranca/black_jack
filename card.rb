class Card
  attr_reader :rank, :suit
  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def face_card?(rank)
    ['J', 'Q', 'K'].include?(rank)
  end

  def value
    if face_card?(@rank)
      10
    elsif @rank == 'A'
      11
    else
      @rank.to_i
    end
  end

  def show_card
    card = @rank + @suit
  end
end

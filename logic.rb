require_relative 'card'
require_relative 'deck'
require_relative 'hand'

# player_hand = Hand.new
# dealer_hand = Hand.new

# apple = Deck.new
# apple.shuffle
# dealer_hand = Hand.new([apple.deal, apple.deal])

# p dealer_hand.hand
card1 = Card.new('A', '♠')
card2 = Card.new('A', '♥')
bill = Hand.new([card2, card1])
p bill.ace_count
p bill.score

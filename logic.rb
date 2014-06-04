require_relative 'card'
require_relative 'deck'
require_relative 'hand'
require 'pry'

def hit_or_stay
end

def bust?(hand)
  if hand > 21
    true
  else
    false
  end
end

puts "Welcome to Blackjack!"

deck_of_cards = Deck.new

players_hand = Hand.new
dealers_hand = Hand.new

p_card_1 = deck_of_cards.deal
players_hand.add_card(p_card_1)

d_card_1 = deck_of_cards.deal
dealers_hand.add_card(d_card_1)

d_card_2 = deck_of_cards.deal
dealers_hand.add_card(d_card_2)

puts "Player was delt #{p_card_1.show_card}"
p_card_2 = deck_of_cards.deal
players_hand.add_card(p_card_2)

puts "Player was delt #{p_card_2.show_card}"
puts "Players Score: #{players_hand.score}"

puts "Hit or stay?"
respond = gets.chomp.downcase
while respond == 'h'
  card = deck_of_cards.deal
  players_hand.add_card(card)
  puts "Player was delt #{card.show_card}"
  puts "Players Score: #{players_hand.score}"
  if bust?(players_hand.score)
    puts "Bust!"
     break
  end
  puts "Hit or stay?"
  respond = gets.chomp.downcase
end

puts "Dealer was delt #{d_card_1.show_card}\nDealer was delt #{d_card_2.show_card}"

puts "Dealer's Score: #{dealers_hand.score}"

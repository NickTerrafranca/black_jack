require_relative 'card'
require_relative 'deck'
require_relative 'hand'

class BlackjackGame
  def initialize(players_hand, dealers_hand, deck)
    @players_hand = players_hand
    @dealers_hand = dealers_hand
    @deck = deck
  end

  def bust?(hand)
    if hand > 21
      true
    else
      false
    end
  end

  def begin_game
    puts 'Welcome to Blackjack!'
    @players_hand.add_card(@deck)
    @players_hand.add_card(@deck)
    @dealers_hand.add_card(@deck)
    @dealers_hand.add_card(@deck)
    puts "\nPlayer was delt #{@players_hand.first_card.show_card}"
    puts "Player was delt #{@players_hand.last_card.show_card}"
    puts "Players Score: #{@players_hand.score}"
  end

  def hit_or_stay
    print "\nHit or stay? (H/S) :"
    respond = gets.chomp.downcase
    while respond == 'h'
      @players_hand.add_card(@deck)
      puts "\nPlayer was delt #{@players_hand.last_card.show_card}"
      puts "Players Score: #{@players_hand.score}"
      if bust?(@players_hand.score)
        puts "\nBust!"
        break
      end
      puts "\nHit or stay?"
      respond = gets.chomp.downcase
    end
  end

  def end_game
    if @players_hand.score <= 21
      puts "\nDealer was delt #{@dealers_hand.first_card.show_card}"
      puts "Dealer was delt #{@dealers_hand.last_card.show_card}"
      puts "Dealer's Score: #{@dealers_hand.score}"
      puts #?
      while @dealers_hand.score < 17
        @dealers_hand.add_card(@deck)
        puts "Dealer was delt #{@dealers_hand.last_card.show_card}"
        puts "Dealer Score: #{@dealers_hand.score}"
        if bust?(@dealers_hand.score)
          puts "\nBust!"
          break
        end
      end

      if @dealers_hand.score <= 21
        if @dealers_hand.score < @players_hand.score
          puts "\nYou win!"
        elsif @dealers_hand.score > @players_hand.score
          puts 'You lose!'
        else
          puts 'Tie! You keep your money!'
        end
      else
        puts 'You win!'
      end
    else
      puts 'You lose!'
    end
  end
end

require 'pry'
def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  1+ rand(11)
end

def display_card_total(sum_player_cards)
  puts "Your cards add up to #{sum_player_cards}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  user_input = gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  2.times {deal_card}
  sum_player_cards = deal_card + deal_card
  display_card_total(sum_player_cards)
  return sum_player_cards
end

def hit?(player_current_total)
  prompt_user
  choice = get_user_input
  if choice =="s"
    return player_current_total
    prompt_user
  elsif choice =="h"
    player_current_total += deal_card
  else
    invalid_command
    prompt_user
    user_input = get_user_input
  end
  # code hit? here
return player_current_total
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
  # prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  card_total = initial_round
  until card_total > 21 
    card_total = hit?(card_total)
    display_card_total(card_total)
  end
  end_game(card_total)
  # return player_current_total
end

############################################ runner prototype
# welcome
# initial_round
# player_current_total = initial_round
# hit?(player_current_total)
# display_card_total
# if display_card_total > 21
# puts "Your cards add up to #{display_card_total}"
# end
############################################
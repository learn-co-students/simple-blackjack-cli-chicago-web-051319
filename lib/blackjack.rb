def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  card_one = deal_card
  card_two = deal_card
  display_card_total(card_one + card_two)
  cards_total = card_one + card_two
  cards_total
end

def hit?(cards_total)
  # code hit? here
  prompt_user
  new_input = get_user_input
  if new_input == "s"
    cards_total
  elsif new_input == "h"
    new_card = deal_card
    new_card_total = new_card + cards_total
  else
    invalid_command
  end
end

def invalid_command
  puts "Please enter a valid command"
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  card_total = initial_round()
  total = 0
  if card_total < 21
      total += hit?(card_total)
      display_card_total(total)
  end
    # new_card = hit?(card_total)
    # final = display_card_total(new_card)
    end_game(total)
end

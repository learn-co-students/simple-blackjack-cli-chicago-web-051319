def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  return rand(1..11)
end

def display_card_total(x)
  puts "Your cards add up to #{x}"
  # code #display_card_total here
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  return gets.chomp
  # code #get_user_input here
end

def end_game(x)
  puts "Sorry, you hit #{x}. Thanks for playing!"
  # code #end_game here
end

def initial_round
  total = deal_card + deal_card
  display_card_total(total)
  return total
  # code #initial_round here
end

def hit?(total)
  prompt_user
  inp = get_user_input
  if inp == "h"
    y = deal_card
    total += y
  elsif inp == "s"
    total = total
  else
    invalid_command
  end
  return total
  # code hit? here
end

def invalid_command
  inp = gets.chomp
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
######a###############################################

def runner
  welcome
  x = initial_round
  until x > 21
    x = hit?(x)
    display_card_total(x)
  end
  end_game(x)
end
    

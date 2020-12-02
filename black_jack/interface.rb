require_relative "croupier"

# TODO: make the user play from terminal in a while loop that will stop
#       when the user will not be asking for  a new card
gamer_score = 0
bank_card = pick_bank_score
print "Let's play Black Jack!!\n"
user_input = ""
while user_input != "exit"
  print "\nWant to pick a card?\n"
  user_input = gets.chomp
  if user_input == "yes"
    print end_game_message if gamer_score > 21
    gamer_score += pick_player_card
    print state_of_the_game(gamer_score, bank_card)
  elsif user_input == "no"
    print end_game_message(gamer_score, bank_card)
    break
  elsif user_input == "exit"
    print "Alright, bye!"
  else
    print "Answer by \"yes\" or \"no\" :)\n"
  end
end

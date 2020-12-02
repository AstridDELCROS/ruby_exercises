require_relative 'black_jack'

def state_of_the_game(player_score, bank_score)
  # TODO: return (not print!) a message containing the player's score and bank's score
  score_message = "The player's score is #{player_score} and the bank's score is #{bank_score}!"
  return score_message
end

def end_game_message(player_score, bank_score)
  # TODO: return (not print!) a message telling if the user won or lost.
  if player_score > 21
    "You lose."
  elsif player_score == 21
    "Black Jack! You win :)"
  elsif player_score > bank_score
    "You win against the bank!"
  elsif player_score < bank_score
    "You lost against the bank."
  elsif player_score == bank_score
    "Draw, it's a push and you get your money back."
  else
    "Don't know what happened here..."
  end
end

def pick_bank_score
  # TODO: Use Random to get a new random score
  rand_bank_score = rand(16..21)
  return rand_bank_score
end

def pick_player_card
  # TODO: Use Random to get a new random card
  rand_player_card = rand(1..11)
  return rand_player_card
end

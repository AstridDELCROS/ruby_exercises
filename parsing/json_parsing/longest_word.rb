require 'open-uri'
require 'json'

def generate_grid(grid_size)
  # TODO: generate random grid of letters
  (0...grid_size).map { ('A'..'Z').to_a[rand(26)] }
end

def run_game(attempt, grid, start_time, end_time)
  # TODO: runs the game and return detailed hash of result
  result = {}
  result[:time] = (end_time - start_time).to_i
  if attempt.upcase.chars.all? { |letter| attempt.count(letter) <= grid.count(letter) }
    word_exist?(attempt, result)
  else
    result[:score] = 0
    result[:message] = "not in the grid"
  end
  return result
end

def word_exist?(attempt, result)
  if word_parsing(attempt)["found"]
    result[:score] = result[:time] > 15 ? 0 : (attempt.size * 10) / result[:time]
    result[:message] = "well done"
  else
    result[:score] = 0
    result[:message] = "not an english word"
  end
end

def word_parsing(attempt)
  url = "https://wagon-dictionary.herokuapp.com/#{attempt}"
  read_word = open(url).read
  return JSON.parse(read_word)
end

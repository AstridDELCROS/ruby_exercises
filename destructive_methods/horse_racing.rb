def horse_racing_format!(race_array)
  # TODO: modify the given array so that it is horse racing consistent. This method should return nil.
  new_array = []
  race_array.each_with_index do |element, index|
    new_array << "#{index + 1}-#{element}!"
  end
  race_array = new_array.reverse
  return race_array
  # return nil
end

p horse_racing_format!(["Abricot du Laudot", "Black Caviar", "Coup de Folie", "Brigadier Gerard"])

def horse_racing_format(race_array)
  return race_array
end

p horse_racing_format(["Abricot du Laudot", "Black Caviar", "Coup de Folie", "Brigadier Gerard"])

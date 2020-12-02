def most_successful(number, max_year, file_path)
  # TODO: return the `number` of most successful movies before `max_year`
  movie_hash = Hash.new(0)
  movie_array = []
  CSV.foreach(file_path) do |element|
    movie_array << { name: element[0], year: element[1].to_i, earnings: element[2] }
  end
  p movie_array
  # end
end

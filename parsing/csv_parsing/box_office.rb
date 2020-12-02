require 'csv'

def most_successful(number, max_year, file_path)
  # TODO: return the `number` of most successful movies before `max_year`
  movie_by_year = select_by_year(max_year, file_path)
  movie_by_year.max_by(number) { |item| item["earnings"] }
end

def select_by_year(max_year, file_path)
  movie_array = []
  CSV.foreach(file_path) do |element|
    if element[1].to_i < max_year
      movie_array << { "name" => element[0], "year" => element[1].to_i, "earnings" => element[2] }
    end
  end
  movie_array
end

filepath = File.dirname(__FILE__) + '/../lib/movies.csv'
p most_successful(3, 1970, filepath)

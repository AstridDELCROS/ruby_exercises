def filter_stop_words(stop_words_file_name)
  stop_word = []
  File.open(stop_words_file_name, "r").each_line do |word|
    stop_word << word.chomp
  end
  stop_word
end

def create_array_from_line(file_name)
  line_array = []
  File.open(file_name, "r").each_line do |line|
    line_array << line.downcase.split(/\W+/)
  end
  line_array
end

def most_common_words(file_name, stop_words_file_name, number_of_word)
  # TODO: return hash of occurences of number_of_word most frequent words
  stop_words = filter_stop_words(stop_words_file_name)
  line_array = create_array_from_line(file_name)
  common_word = Hash.new(0)
  line_array.each do |line|
    line.each do |word|
      common_word[word] += 1 unless stop_words.include?(word)
    end
  end
  common_word.sort_by { |_key, value| -value }[0..number_of_word - 1].to_h
end

text_path = File.dirname(__FILE__) + "/source-text.txt"
stop_words_path = File.dirname(__FILE__) + "/stop_words.txt"
most_common_words(text_path, stop_words_path, 5)

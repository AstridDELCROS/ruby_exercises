def group_anagrams(words)
  # TODO: group anagrams
  same_gr = {}
  words.each do |element|
    sorted_key = element.downcase.chars.sort.join
    if same_gr[sorted_key]
      same_gr[sorted_key] << element
    else
      same_gr[sorted_key] = [element]
    end
  end
  return same_gr.values
end

p group_anagrams(['cars', 'for', 'POTATOES', 'racs', 'four', 'scar', 'creams', 'SCREAM'])

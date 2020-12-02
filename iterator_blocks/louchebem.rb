def louchebemize(sentence)
  # TODO: implement your louchebem translator
  # iterer jusqu a voyelle,
  # puis add du nb index avant derniere voyelle
  # ajouter l devant premiere voyelle
  # terminer mot par rand(["em", "e", "ji", "oc", "ic", "uche", "es"])
  # ignorer ponctuation

  return sentence if sentence.size == 1

  suffixe = ["em", "é", "ji", "oc", "ic", "uche", "ès"].sample
  if find_vowel(sentence[0])
    return "L#{sentence}#{suffixe}"
  else
    first_vowel_index = sentence.chars.index do |letter|
      letter if find_vowel(letter)
    end
    until_a = sentence[0...first_vowel_index]
    end_word = sentence[first_vowel_index...sentence.size]
    return "L#{end_word}#{until_a}#{suffixe}"
  end
end

def find_vowel(letter)
  "aeiouyéàèùâêîôûëïü".include? letter
end

p louchebemize("chat")
# p find_vowel("o")

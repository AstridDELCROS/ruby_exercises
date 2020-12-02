def size_splitter(array, size)
  # TODO: Return an array of two arrays, the first containing
  #       words of length `size`, the second containing all the other words
  #       In addition to this split, each array should be *sorted*.

  good_length = array.select { |element| element.size == size }.sort
  bad_length = array.reject { |element| element.size == size }.sort
  return [good_length, bad_length]
end

def block_splitter(array)
  # TODO: Return an array of two arrays, the first containing
  #       elements for which the given block yields true,
  #       the second containing all the other elements.
  #       No sort needed this time.

  true_arr = array.select { |element| yield(element) }
  false_arr = array.reject { |element| yield(element) }
  return [true_arr, false_arr]
end

test_arr = block_splitter(["hello", "you", "my", "friend"]) do |elt|
  if elt.include? "y"
    capitalized = elt.capitalize
  else
    upcased = elt.upcase
  end
  # p [capitalized, upcased]
end
p test_arr

# p size_splitter(["hello", "tip", "friend", "test", "yop", "arbre", "mot"], 3)

def sub_strings(string, dictionary)
  dictionary.reduce(Hash.new(0)) do |hash, word|
    hash[word] += 1 if string.downcase.include?(word.downcase)
    hash
  end 
end
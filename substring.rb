def sub_strings(string, dictionary)
  dictionary.reduce(Hash.new(0)) do |hash, word|
    hash[word] += 1 if string.include?(word)
    hash
  end 
end
def sub_strings(string, dictionary)
  dictionary.reduce(Hash.new(0)) do |hash, word|
    string.split(" ").each do |element|
      hash[word] += 1 if element.downcase.include?(word.downcase)
    end
    hash
  end 
end
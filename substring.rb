def sub_strings(string, dictionary)
  dictionary.reduce(Hash.new(0)) do |hash, word|
    string.split(" ").each do |element|
      hash[word] += 1 if element.downcase.include?(word.downcase)
    end
    hash
  end 
end
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
sub_strings("Howdy partner, sit down! How's it going?", dictionary)
dictionary = ["bElow","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
# > substrings("Howdy partner, sit down! How's it going?", dictionary)
# => { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }


def substrings(string, dict)
    dict.reduce(Hash.new(0)) do |result, word| 
        if string.downcase.include?(word.downcase)
            result[word.downcase] = string.count(word.downcase)
        end
        result
    end
end

p substrings("Howdy partner, sit down! How's it going?", dictionary)

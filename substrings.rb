dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dict)
    result = Hash.new(0)
    for word in dict
        if string.include?(word)
            result[word] += 1
        end
    end
    result
end

p substrings("below", dictionary) == { "below" => 1, "low" => 1 }

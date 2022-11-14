# Implement a method #substrings that takes a word as the first argument and then an array of valid substrings (your dictionary) as the second argument. It should return a hash listing each substring (case insensitive) that was found in the original string and how many times it was found.

# > dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
# => ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
# > substrings("below", dictionary)
# => { "below" => 1, "low" => 1 }

#Pseudocode
# 1. Iterate through the dictionary and for every individicual item, compare it to the word. 
# 2. If the item matches the word add the key value pair to a new hash
# 3. If its not the first match, incerement another count in the value for the key value pair ( :word: 2)
#4. 

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own", "elow", "below", "low","part","partner","sit"]

word = 'below'

def substrings(word, dictionary)
  
  included_array = [] 
  
  dictionary.map do |substring|
    if word.include?(substring)
      included_array.push(substring)
    end
  end

  substring_array = included_array.reduce(Hash.new(0)) do |result, item|
    result[item] += 1
    result
  end

  p substring_array
  
end

substrings(word, dictionary)

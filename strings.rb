def substrings(word, dictionary)
  
  included_array = [] 
  
  dictionary.map do |substring|
    if word.downcase.include?(substring.downcase)
      included_array.push(substring.downcase)
    end
  end

  substring_array = included_array.reduce(Hash.new(0)) do |result, item|
    result[item] += 1
    result
  end

  p substring_array
  
end



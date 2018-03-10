def combine_anagrams(words)
   anagrams = [] #make array anagram
   words.each do |word|#for each word in words
       newWord = word.downcase.chars.sort.join #make a sorted word
       alt = [] #prepare an array if there is no anagram present in current array
       words.each do |nextWord| #go through words again
       if (newWord == nextWord.downcase.chars.sort.join) #compare the words against the sorted word
       alt.push(nextWord)#add the word to that alt array if they're the same (if word is pushed into alt, then output will be an array of number of anagram repititions of each individual word)
       end
       anagrams.push(alt) #put alt array into anagram array
       end
       end
    p anagrams.uniq #remove duplicate arrays
end

combine_anagrams(['cars', 'for', 'potatoes', 'racs', 'four', 'scar', 'creams', 'scream'])
combine_anagrams(['cars', 'for', 'potatOes', 'racs', 'fOUr', 'scar', 'creams', 'scrEam'])
combine_anagrams(['cars', 'cars', 'potatoes', 'racs', 'cars', 'scar', 'potatoes', 'scream'])
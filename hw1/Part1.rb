def palindrome?(string)
    word = string.downcase.gsub(/\W/, '') #lowercase and remove any nonword characterm
    puts (word == word.reverse) ? "true" : "false" #true if same backwards as forwards
end

palindrome?("A man, a plan, a canal -- Panama") #=> true
palindrome?("Madam, I'm Adam!") # => true
palindrome?("Abracadabra") # => false (nil is also ok)
palindrome?("A") # => true
palindrome?("A B") # => false
puts ''

def count_words(string)
    strings = string.downcase.split(' ') #an array of each word in string in lowercase
    words = Hash.new(0)
    strings.each { |word| words[word] += 1} #for each strings, increase the count of word(key) in words(hash) for every word(key)
    puts words
end

count_words("A man, a plan, a canal == Panama") # => {"a"=>3, "man,"=>1, "plan,"=>1, "canal"=>1, "=="=>1, "panama"=>1}
count_words("Doo bee doo bee doo") # => {"doo"=>3, "bee"=>2}
count_words("Do dodo do doings, do you, you dodo you")
# Write function that translates a text to Pig Latin and back. English is translated to Pig Latin by taking 
# the first letter of every word, moving it to the end of the word and adding ‘ay’. “The quick brown fox” 
# becomes “Hetay uickqay rownbay oxfay”.

string = "The quick brown fox"

def toPigLatin(string)
    result = ""
    list = [] 
    list = string.split(" ") # splits a string into an array (like a string tokenizer with the separator " ")

    for i in 0..list.length-1 do
        word = list[i]
        if word[0] == word[0].upcase then
            word.downcase!
            result += "#{word[1].upcase}#{word[2,word.length-2]}#{word[0]}ay "
        else
            word.downcase!
            result += "#{word[1,word.length-1]}#{word[0]}ay "
        end
    end
    return result
end

def toEnglish(string)
    result = ""
    list = [] 
    list = string.split(" ") # splits a string into an array (like a string tokenizer with the separator " ")

    for i in 0..list.length-1 do
        word = list[i]
        if word[0] == word[0].upcase then
            word.downcase!
            result += "#{word[word.length-3].upcase}#{word[0,word.length-3]} "
        else
            word.downcase!
            result += "#{word[word.length-3]}#{word[0,word.length-3]} "
        end
    end
    return result
end

puts "Initial string: #{string}"
puts "To PigLatin: #{string = toPigLatin(string)}"
puts "Back to English: #{string = toEnglish(string)}"
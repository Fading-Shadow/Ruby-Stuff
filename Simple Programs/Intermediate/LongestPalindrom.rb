# Write a program that finds the longest palindromic substring of a given string. Try to be as efficient as possible!

string = 'A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my wholelohw heart. I am alone, and feel the charmrahc of Line by line existencecnetsixe in this spot, which was.'

def tokenize(string,separators)
    for i in 0..separators.length-1 do
    string = string.gsub(separators[i].to_s, " ")
    end
    return string.split(" ")
end

def isPalindrome(string)
    for i in 0..(string.length/2) do
        if string[i] != string[string.length-i-1] then
            return false
        end
    end
    return true
end
# string = string.gsub('.', ' ')
list = tokenize(string, ' ,.+\/')
biggest = ''

for i in 0..list.length-1 do
    if isPalindrome(list[i]) == true and list[i].length > biggest.length then
        biggest = list[i]
    end
end

puts "The biggest palindrome in the string is: #{biggest}"
def isPalindrome(string)
    is_true = 1 # initialize as true
    for i in 0..(string.length/2) do
        if string[i] != string[string.length-i-1] then
            is_true=0
        end
    end
    if is_true == 1 then 
        puts "#{string} is a palindrome"
    elsif is_true == 0 then
        puts "#{string} is not a palindrome"
    end
end

puts "Give a string to be checked: "
string = gets.chop

isPalindrome(string)
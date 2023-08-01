# Given two strings, write a program that efficiently finds the longest common subsequence.

str1 = "Ana has apples"
str2 = "Ana goes to someone that has apples"

# result should be "has apples" and not "Ana"

seq = ''
substring = ''
for i in 0..str1.length do
    init = i
    for j in 0..str2.length do
        if str1[i] == str2[j] then # if matching chars were found
            substring << str1[i].to_s # append to substr
            i += 1 # go to next chars and check if they match
            j += 1
        elsif str1[i] != str2[j] then
            if substring.length > seq.length then
                seq = substring.to_s
                substring = ''
            else 
                substring = ''
                i = init+1
                j = 0
            end
        end
    end
end

puts "The longest common subsequence is : '#{seq}'"
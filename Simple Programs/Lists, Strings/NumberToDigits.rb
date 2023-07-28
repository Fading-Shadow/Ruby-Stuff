puts "Give a number: "
n = gets.chop.to_i
n = n.to_s # converting into a string for easier handling
list = []
i = 0

# assign to the list and print in the same function for faster execution
for i in 0..n.length-1 do
    list[i] = n[i]
    print "#{list[i]} "
    if i == n.length-1 then
        print "\n"
    end
end
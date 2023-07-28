list = [1,2,3,4,5,6]

puts "By how many positions do you want to rotate the list? "
n = gets.chop.to_i
print "\n"

# rotate by N

def rotate(list,positions)
    newlist = []
    for i in 0..list.length-1 do
        pos = (i+positions) % 6
        newlist[i] = list[pos]
    end
    return newlist
end

list = rotate(list,n)

# print the rotated list

for i in 0..list.length-1 do
    print "#{list[i]} "
end

print "\n"
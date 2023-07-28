list1 = [1,4,6]
list2 = [2,3,5]

list = list1 + list2
list.sort!

for i in 0..list.length-1 do
    print "#{list[i]} "
end
print "\n"
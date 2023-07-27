def concatenate(list1, list2)
    list = list1 + list2
    return list
end

list1 = ['a','b','c']
list2 = [1,2,3]

list = concatenate(list1,list2)

# prints concatenated list
for i in 0..list.length-1 do 
    print "#{list[i]} "
end
print "\n"
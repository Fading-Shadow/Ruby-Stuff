def cross_concat(list1, list2)
  count = 0
  list = []
  if list1.length >= list2.length
    for i in 0..list1.length do
      if !list2[i].nil?
        list[count] = list1[i]
        count += 1
        list[count] = list2[i]
        count += 1
      else
        list[count] = list1[i]
        count += 1
      end
    end
  else
    for i in 0..list2.length do
      if !list1[i].nil?
        list[count] = list1[i]
        count += 1
        list[count] = list2[i]
        count += 1
      else
        list[count] = list2[i]
        count += 1
      end
    end
  end
  list
end

list1 = %w[a b c]  # way of writing without 'a' or "a"
list2 = [1, 4, 2, 3]

list = cross_concat(list1, list2)

# prints concatenated list
for i in 0..list.length - 1 do
  print "#{list[i]} "
end
print "\n"

# recursion
def rec_sum(list, index)
  return 0 unless index < list.length

  index += 1
  list[index - 1] + rec_sum(list, index)
end

# for-loop
def for_sum(list)
    sum = 0
    for i in 0..list.length-1 do 
        sum += list[i]
    end
    puts "For-loop: #{sum}"
end

def while_sum(list)
    i = 0
    sum = 0
    while i < list.length do
        sum += list[i]
        i += 1
    end
    puts "While-loop: #{sum}"
end



list = [5, 2, 4]
print 'The list is: '
for i in 0..list.length-1 do
    print "#{list[i]} "
end
print "\n"

puts "Recursion: #{rec_sum(list, 0)}"

for_sum(list)
while_sum(list)

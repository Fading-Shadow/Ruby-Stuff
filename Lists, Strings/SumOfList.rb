list = [0,1,2,3,4,5,6,7]
sum = 0
for i in 0..list.length do
    sum += list[i].to_i
end
puts "Sum of elements is: #{sum}"
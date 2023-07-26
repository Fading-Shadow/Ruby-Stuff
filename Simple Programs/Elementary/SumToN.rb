puts "Give a number: "
n = gets.chop.to_i # parse to int
sum = 0 
for i in 1..n do
    sum += i
end
puts "The sum is: #{sum}"
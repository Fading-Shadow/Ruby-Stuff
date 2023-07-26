def isMult(number)
    if number % 3 == 0 then
        return number
    elsif number % 5 == 0 then
        return number
    end
end

puts "Give a number: "
n = gets.chop.to_i # parse to int
sum = 0 
for i in 2..n do
    if isMult(i) then
    sum += i
    end
end
puts "The sum of prime numbers is: #{sum}"
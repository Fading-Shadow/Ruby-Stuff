def isPrime(number)
    div = 1 # initial statement that it is prime
    for i in 2..number/2 do
        if number % i == 0 then # modulo needs to be spaced or it takes it as comment
            div = 0
            break
        end
    end
    return div
end

puts "Give a number: "
n = gets.chop.to_i # parse to int
sum = 0 
for i in 2..n do
    if isPrime(i) then
    sum += i
    end
end
puts "The sum of prime numbers is: #{sum}"
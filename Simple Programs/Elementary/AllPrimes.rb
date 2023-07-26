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
n = gets.chop.to_i
print "1 | "
for i in (2..n) do
    if isPrime(i) == 1 then
        print "#{i} | "
    end
end
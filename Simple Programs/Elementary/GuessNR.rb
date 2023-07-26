puts "Guess the number from 1 to 10"
number = rand(1..10) # random = [1,10] closed interval
used = {}
for i in 1..10 do
    used[i] = 0
end
sum = 0
while true do
    guess = gets.chop.to_i
    if guess < number then
        print "Too low!\n"
        used[guess] = 1
    elsif guess > number then
        print "Too High!\n"
        used[guess] = 1
    else
        print "Correct!\n"
        used[guess] = 1
        for i in 1..10 do
            sum += used[i]
        end
        print "The number of attempts was: #{sum}"
        break
    end
end
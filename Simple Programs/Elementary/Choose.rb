def mult(number)
    x = 1
    for i in 1..number do
        x *= i
    end
    puts "The multiplication of the numbers is: #{x}"
end


def sum(number)
    x = 1
    for i in 1..number do
        x += i
    end
    puts "The sum of the numbers is: #{x}"
end

puts "Give a number: "
n = gets.chop.to_i
puts "Do you want to multiply or sum all the numbers from 1 to #{n}? (+ or *)"
choice = gets
if choice == "+\n" then # needs to take consideration of newline since it wasn't chopped
    sum(n)
elsif choice[0] == '*' then # this works too
    mult(x)
end

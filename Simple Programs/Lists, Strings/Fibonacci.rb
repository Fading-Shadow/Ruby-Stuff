# display the first 100 Fibonacci numbers

list = []

for i in 0..99 do
    list[i] = list[i-2].to_i + list[i-1].to_i
    if i < 2 then
        list[i] = 1
        print "#{list[i]}, "
    elsif i < 99 and i > 1 then
        print "#{list[i]}, "
    else 
        print "#{list[i]} \n"
    end
end
def convertToTen(list,base)
    if base < 10 && base > 0 then
        newlist = []
        for i in 0..list.length-1 do
            sum = 0
            number = list[i].to_s
            for j in 0..number.length-1 do
                # debug line
                # puts "#{number[j].to_i} #{(base**(number.length-j-1))} result:#{number[j].to_i * (base**(number.length-j-1))}"
                sum += number[j].to_i * (base**(number.length-j-1))
            end
            newlist[i] = sum
        end
        return newlist
    else
        return list
    end
end

def display(list)
    for i in 0..list.length-1 do
        print "#{list[i]} "
        if i == list.length-1 then
            print "\n"
        end
    end
end


list = [200,102,10]

puts "Initial list: "
display(list)
print "\n"

list = convertToTen(list,3)

puts "\nList converted to base 10: "
display(list)
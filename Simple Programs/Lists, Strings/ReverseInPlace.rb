puts 'Give the size of the list: '
n = gets.chop.to_i

def display(list)
    for i in 1..list.length do
        print "#{list[i]} "
    end
    print "\n"
end

list = {}

# reading the list

for i in 1..n do
    puts 'Give a number: '
    list[i] = gets.chop.to_i
end

# reversing the list

for i in 1..n/2 do
    aux = list[i]
    list[i] = list[n-i+1]
    list[n-i+1] = aux
end

display(list)

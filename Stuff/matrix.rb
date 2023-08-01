matrix = []
for i in 0..1 do
    list = []
    for j in 0..1 do
        puts "Row#{i+1}[#{j+1}] = "
        list << gets.chop.to_s
    end
    matrix[i] = list
end

for i in 0..1 do
    for j in 0..1 do
        print "#{matrix[i][j]} "
    end
    print "\n"
end
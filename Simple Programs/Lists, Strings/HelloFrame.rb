list = ["Hello", "World", "in", "a", "frame"]

def getMaxLen(list)
    max = 0
    for i in 0 .. list.length-1 do
        if max < list[i].length then
            max = list[i].length
        end
    end
    return max+4 # return the max length + spaces + stars for the frame
end

def makeSpace(number)
    for i in 1..number do
        print "\s"
    end
end

def makeFrame(max)
    for i in 1..max do
        print "*"
    end
    print "\n"
end

def printWord(word,max)
        print '* '

        for j in 0..word.length-1 do
            print word[j]
        end

        for i in word.length+3..max-2 do
            print " "
        end

        puts ' *'
end

max = getMaxLen(list)

for i in 0..list.length-1 do
    if i == 0 then
        makeFrame(max)
        printWord(list[i],max)
    elsif i > 0 and i < list.length-1 then
        printWord(list[i],max)
    else
        printWord(list[i],max)
        makeFrame(max)
    end
end
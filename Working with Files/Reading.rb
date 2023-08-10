input = File.open("Working with Files/reading.txt", "r+")
array = input.read.split("\n")
string = ""
for i in 0..array.length-1 do
    string += array[i]+" "
end
puts string # outputs "Testing to see if this even works in the way that I think it does" as intended
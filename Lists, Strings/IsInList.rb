puts 'Give the size of the list: '
n = gets.chop.to_i

list = {}

# reading the list

for i in 1..n do
    puts 'Give a number: '
    list[i] = gets.chop.to_i
end

# finds element

puts "What do you want to search for? "
search = gets.chop.to_i
found = false
for i in 1..list.length do
    if search.to_i == list[i].to_i then
        found = true
        puts "#{search} occurs in the list"
    end
end

if found == false then
    puts "#{search} does not occur in the list"
end
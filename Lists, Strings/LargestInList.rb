puts 'Give the size of the list: '
n = gets.chop.to_i
list = {}
i = 1

while i <= n
  puts 'Give a number: '
  list[i] = gets.chop.to_i
  i += 1
end

max = list[1]

for i in 1..n do
  print "#{list[i].to_i} "
  max = list[i] if list[i].to_i > max
end

puts "\nThe maximum in the list is: #{max}"

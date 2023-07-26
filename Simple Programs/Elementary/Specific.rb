puts "What is your name?"
name = gets.chop # takes the enter that is put by ruby so that when the name is given as output it doesnt inset a new line
name = name[0].upcase + name[1..name.length].downcase # changing first letter to uppercase and rest to lower
if name == "Alice" or name == "Bob"
puts "Hello, #{name}!"
else
puts "Hello, Human!"
end
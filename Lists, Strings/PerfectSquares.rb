def on_all(list)
  for i in 0..list.length - 1 do
    puts " #{list[i]} * #{list[i]} = #{perfSquare(list[i])}"
  end
end

def perfSquare(number)
  number * number
end

list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
on_all(list)

class Stack
  attr_accessor :array

  def initialize
    @array = []
    @size = 0
  end

  def push(value)
    @array << value
    @size += 1
  end

  def pop
    val = @array[@size-1]
    # remove the value
    @size -= 1
    aux = []
    for i in 0..@size-1 do
      aux[i] = array[i]
    end
    @array = aux

    return val
  end

  def size
    return @size
  end

  def display
    for i in 0..@size-1 do
      print "#{@array[i]} "
    end
    print "\n"
  end
end

stack = Stack.new
stack.push(5)
stack.push(6)
stack.push(3)
stack.push(4)
puts "init array:"
puts stack.array.inspect
puts stack.size
puts "removed:"
puts stack.pop
puts stack.array.inspect

puts 'Display:'
stack.display
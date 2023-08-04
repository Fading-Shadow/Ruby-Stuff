class Queue
    attr_accessor :size, :array
    def initialize
        @array = []
        @size = 0
    end

    def enqueue(value)
        @array[@size] = value
        @size += 1
    end

    def dequeue
        if @array then
            aux = []
            for i in 1..@size do
                aux << @array[i]
            end
            @size -= 1
            val = @array[0]
            @array = aux
            return val
        else
            return false
        end
    end

    def display
        if @array then
            for i in 0..@size do
                print "#{@array[i]} "
            end
        end
        print "\n"
    end

    def peek
        if @array then
            return @array[0]
        end
    end
end

q = Queue.new
for i in 0..5 do
    q.enqueue(rand(10))
end

print "Display: "
q.display

print "Dequeue: "
print "#{q.dequeue}\n"

print "Display: "
q.display
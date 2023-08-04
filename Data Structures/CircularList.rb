class Elem
    attr_accessor :next, :prev, :value
    def initialize(value)
        @next = nil
        @prev = nil
        @value = value
    end
end

class CircularList
    def initialize
        @array = []
        @slot = 0
        @size = 4
    end

    def insert(value)
        elem = Elem.new(value)
        if @slot == 0 then
            elem.prev = @array[@size]
            elem.next = @array[@slot+1]
        elsif @slot == @size then
            elem.next = @array[0]
            elem.prev = @array[@slot-1]
        elsif @slot > 0 and @slot < @size then
            elem.next = @array[@slot+1]
            elem.prev = @array[@slot-1]
        else
            @slot = 1
            elem.prev = @array[@size]
            elem.next = @array[@size_1]
        end
        @array[@slot] = elem
        @slot += 1
    end

    def display
        if @array == nil then
            puts "The list is empty!"
        else
            for i in 0..3 do
                if @array[i] and @array[i].value then
                    print "#{@array[i].value} "
                end
            end
        end
    end

    def remove
        @slot -= 1
        @array.delete_at(@slot)
    end

    def wipe
        @array -= @array
        @slot = 0
    end
end


list = CircularList.new
list.insert(rand(10))
list.insert(rand(10))
list.insert(rand(10))

list.display
puts ""
list.remove
list.display

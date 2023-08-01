class Matrix 
    def initialize(rows,cols)
        @rows = rows.to_i
        @cols = cols.to_i
        @matrix = []

        list = []
        for i in 0..@rows-1 do
            list = []
            for j in 0..@cols-1 do
                list << "0"
            end
            @matrix[i] = list
        end
    end
    def read
        for i in 0..@rows-1 do
            for j in 0..@cols-1 do
                print "#{@matrix[i][j]} "
            end
            print "\n"
        end
    end

    def set(row,col,value)
        @matrix[row][col] = value
    end

    def give_values
        for i in 0..@rows-1 do
            for j in 0..@cols-1 do
                print "[#{i}][#{j}]= "
                @matrix[i][j] = gets.chop.to_i
            end
        end
    end
    def read_stylish
        for i in 0..@rows-1 do
            for j in 0..@cols-1 do
                print "|#{@matrix[i][j]}| "
            end
            print "\n"
        end
    end
end

# matrix = Matrix.new("2","2")
# matrix.set(1,1,20)
# matrix.give_values
# matrix.read_stylish
# matrix.read
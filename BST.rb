class BST
    attr_accessor :value, :left, :right

    def initialize
        @left = nil
        @right = nil
        @value = nil
    end

    def insert(value)
        if @value == nil then
            @value = value
        elsif value < @value then
            if @left == nil then
                @left = BST.new()
            end
            @left.insert(value)
        else
            if @right == nil then
                @right = BST.new()
            end
            @right.insert(value)
        end
    end

    def preorder
        if @value then
            print "#{@value} "
        end
        if @left then
            @left.preorder
        end
        if @right then
            @right.preorder
        end
    end
    
    def postorder
        if @value then
            print "#{@value} "
        end
        if @left then
            @left.postorder
        end
        if @right then
            @right.postorder
        end
    end

    def inorder
        if @value then
            print "#{@value} "
        end
        if @left then
            puts "left"
            @left.inorder
        end
        if @right then
            puts "right"
            @right.inorder
        end
    end
end


tree = BST.new()

for i in 0..5 do
    tree.insert(rand(10))
end

print 'Preorder: '
tree.preorder
print "\n"
print 'Postorder: '
tree.postorder
print "\n"
print 'Inorder: '
tree.inorder

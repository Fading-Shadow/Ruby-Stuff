class BST
    attr_accessor :value, :left, :right

    def initialize(value = nil)
        @left = nil
        @right = nil
        @value = value
    end

    def insert(value)
        if @value == nil
            @value = value
        elsif value < @value
            if @left == nil
                @left = BST.new()
            end
            @left.insert(value)
        else
            if @right == nil
                @right = BST.new()
            end
            @right.insert(value)
        end
    end

    def preorder
        if @value
            print "#{@value} "
        end
        if @left
            @left.preorder
        end
        if @right
            @right.preorder
        end
    end
    
    def postorder
        if @value
            print "#{@value} "
        end
        if @left
            @left.postorder
        end
        if @right
            @right.postorder
        end
    end

    def inorder
        if @left
            @left.inorder
        end
        if @value
            print "#{@value} "
        end
        if @right
            @right.inorder
        end
    end
end


tree = BST.new()

tree.insert(5)
tree.insert(1)
tree.insert(7)
tree.insert(3)
tree.insert(8)

print 'Preorder: '
tree.preorder
print "\n"
print 'Postorder: '
tree.postorder
print "\n"
print 'Inorder: '
tree.inorder

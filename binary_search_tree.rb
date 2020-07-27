class BST
    attr_reader :left, :right, :data
    def initialize(num)
        @data = num
        @left = nil
        @right = nil
    end
    
    def each(&block)
        left.each(&block) if left
        block.call(data)
        right.each(&block) if right
      end

    def insert(num)
        if(num <= @data)
            if @left == nil
                @left = BST.new(num)
            else
                @left.insert(num)
            end
        else
            if @right == nil
                @right = BST.new(num)
            else
                @right.insert(num)
            end
        end
    end
end



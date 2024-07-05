class Stack
    def initialize(size)
      @size = size
      @store = Array.new(@size)
      @top = -1
    end
    
    def pop
      if empty?
        nil
      else
        popped = @store[@top]
        @store[@top] = nil
        @top = @top.pred
        popped
      end
    end
    
    def push(element)
      if full? or element.nil?
        nil
      else
        @top = @top.succ
        @store[@top] = element
        self
      end
    end
    
    def size
      @size
    end
    
    def peek
      @store[@top]
    end
    
    private
    
    def full?
      @top == (@size - 1)
    end
    
    def empty?
      @top == -1
    end
  end

s = Stack.new(3)
p s.push(1)
p s.push(2)
p s.pop()
p s.peek()

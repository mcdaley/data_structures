module LinkedList
  
  class QueueNode
    attr_accessor   :value, :next_node
    
    def initialize(value, next_node)
      @value      = value
      @next_node  = next_node
    end
  end
  
  class Queue
    attr_accessor   :front, :rear
    
    def initialize
      @front  = nil
      @rear   = nil
    end
    
    def add(value)
      if @front.nil?
        @rear           = QueueNode.new(value, nil)
        @front          = @rear
      else
        temp            = QueueNode.new(value, nil)
        @rear.next_node = temp
        @rear           = temp
      end      
    end
    alias_method :"<<", :add
    
    def remove
      raise   "Queue is empty"  if empty?
      
      value   = @front.value
      temp    = @front.next_node
      @front  = temp
      
      return  value
    end
    
    def empty?
      @front.nil?
    end
  end # end of class Queue

end # end of module LinkedList
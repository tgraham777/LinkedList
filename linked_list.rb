class IterativeList

  attr_accessor :node, :list_head, :counter, :tail, :next_node, :previous, :node_position

   def initialize
     @tail = tail
     @previous = nil
     @list_head = nil
     @next_node = nil
     @counter = 0
     @node_position = 0
   end

   def pop
     @tail = @tail.previous
     @tail.next_node = nil
   end

   def position(index, node = @list_head)
     return nil unless node
     if index == 0
       if node
         node.data
       else
         nil
       end
     else
       position(index - 1, node.next_node)
     end
   end

   def add_node(node)
     @counter += 1
     if @list_head == nil
       @node = Node.new(node)
       @list_head = @node
     else
       @node.node_position += 1
       while @node.next_node != nil
         @node = @node.next_node
       end
       @tail = Node.new(node)
       @tail.previous = @node
       @node.next_node = @tail
     end
   end
 end


class Node

  attr_accessor :data, :next_node, :previous, :node_position

  def initialize(data)
    @data = data
    @previous = nil
    @node_position = 0
  end

end


class RecursiveList

  attr_reader :head
  attr_accessor :data, :link

  def initialize
    @data = data
    @link = link
  end

  def count(node = head)
    if node.nil?
      0
    else
      1 + count(node.next_node)
    end
  end

  def push(data, node = head)
    if node.nil?
      @head = Node.new(data)
    else
      if node.next_node.nil?
        node.next_node = Node.new(data)
      else
        push(data, node.next_node)
      end
    end
  end

  def position(index, node = head)
    return nil unless node
    if index == 0
      if node
        node.data
      else
        nil
      end
    else
      position(index - 1, node.next_node)
    end
  end

  def pop(node = head)
    if node.nil?
      return nil
    elsif node.next_node && node.next_node.next_node.nil?
      node.next_node = nil
    else
      pop(node.next_node)
    end
  end

  def find_tail(data, node = head)
    if data == node.data && node.next_node == nil
      true
    else
      false
    end
  end
end

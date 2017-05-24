class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

def print_values(list_node)
  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  else
    print "nil\n"
    return
  end
end

class Stack
  attr_reader :data

  def initialize
    @data = nil
  end

  def push(value)
    @data = LinkedListNode.new(value, @data)
  end
 
  def pop
    if bottom_of_stack
      return "You're at the bottom of the stack"
    else
      value = @data.value
      @data = @data.next_node
      return value
    end
  end

  def bottom_of_stack
    @data.nil?
  end
end

def reverse_list(list)
  reversed_stack = Stack.new
end

while list != nil
  reversed_stack.push(list)
  list = list.next_node
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)


print_values(node3)
puts "-------"

stack = Stack.new

stack.push(1)
stack.push(2)
puts stack.pop
puts stack.pop
puts stack.pop
#revlist = reverse_list(node3)
#print_values(revlist)
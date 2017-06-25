require 'pry'

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

def reverse_list(list, previous=nil)
  while list != nil
    next_node = list.next_node
    list.next_node = previous
    previous = list
    list = next_node
  end
  return previous
end

def is_list_infinite?(list, previous=nil)
  unless list || previous == nil # x || y == nil
    puts false
  else
    puts true
  end
end

node1 = LinkedListNode.new(37,)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

print_values(node3)
puts "-------"
revlist = reverse_list(node3)
print_values(revlist)
is_list_infinite?(node2, node1)

# desired output
# 12 --> 99 --> 37 --> nil
# ------
# 37 --> 99 --> 12 --> nil
# true if infinite / false if not
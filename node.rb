class Node
  # Initialize new data struture, use null values if no parameters are passed
  def  initialize( data = nil, next_node = nil)
    # node_data variable will hold single element of data
    @node_data = data
    # next_node variable holds link/pointer to next node in the list.
    @pointer = next_node
  end 
  attr_accessor :node_data, :pointer

  # This method will change the node data value to the passed parameter.
  def value(data = nil)
    node_data = data
  end

  # This method will change the pointer varaible value to the passed parameter.
  def next_node(node)
    pointer = node
  end
end

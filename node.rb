class Node
  # Initialize new data struture, use null values if no parameters are passed
  def  initialize( data = nil, next_node = nil)
    # node_data variable will hold single element of data
    @node_data = data
    # next_node variable holds link/pointer to next node in the list.
    @next_node = next_node
  end 
  attr_accessor :node_data, :next_node

  # This method will chande the node data value to the passed parameter 
  def value(data = nil)
    node_data = data
  end 
end

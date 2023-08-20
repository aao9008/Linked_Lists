class Linked_List
  # Initialize list with first node
  def initialize(node)
    # First node in list is both the head and tail
    @head = node
    @tail = node
  end
  attr_accessor :head, :tail

  # Adds new node containing passed value to the start of the list
  def prepend(value)
    # Create new node.
    # Node data is the value passed
    # New node will point to the head of the list
    new_node = Node.new(value, head)

    # Change the head of the list to newly created node
    head = new_node
  end

  # Adds new node containing passed value to the end of the list.
  def append(value)
    # Create new node.
    # Node data is the value passed
    new_node = Node.new(value)

    # Have the tail of the list point to new_node
    @tail.next_node(new_node)

    # Make new_node the new tail of the list
    @tail = new_node
  end

  # Returns total number of nodes in the list
  def size
    # Set first node to the head of the list
    node = @head

    # intialize a counter
    i = 1

    # Loop through until you reach the tail of the list.
    until node.node_pointer == nil
      # Increment the counter by 1.
      i += 1

      # Set node equal to the next node
      node = node.node_pointer
    end

    # Return the size of of the list
    return i
  end

  # Returns node as given index
  def at(index)
    # Start at head of the list
    current_node = @head

    # find node at passed index using linear search
    index.times do
      # If current_node pointer is nil, then index is invalid
      if current_node.node_pointer.nil? then return 'Invalid Index' end 
      
      # Set current_node to next node in list
      current_node = current_node.node_pointer
    end

    # Return node at passed index
    current_node
  end

  # Remove last element from the list
  def pop
    nil if size < 1

    # Begin as the start of the list
    current_node = @head

    # Move through the list until you reach second to last node
    current_node = current_node.node_pointer until current_node.node_pointer == @tail

    # Clear the pointer of the second to last node
    current_node.node_pointer = nil

    # Make the second to last node the new tail of the list
    @tail = current_node
  end

  def contains?(value)
    # Check if value is contianed in head or tail node for quickest execution (Possible O(1)).
    if head.node_data == value || tail.node_data == value then return true end 
    
    # Set current node to the head of the list
    current_node = @head

    # Iterate through every node of the list until nil is returned (end of list).
    until current_node == nil do 
      # Return true if current node contains the data value being searched for.
      if current_node.node_data == value then return true end
      # Value has not been found, move onto the next node. 
      current_node = current_node.node_pointer
    end
    # Value was not found in the list, return false
    return false
  end

  def find(value)
    # Set current node to the head of the list
    current_node = @head
    
    # Initialize counter
    i = 0

    # Iterate through every node of the list until nil is returned (end of list).
    until current_node == nil do 
      # Return true if current node contains the data value being searched for.
      if current_node.node_data == value then return i end

      # Value has not been found, move onto the next node. 
      current_node = current_node.node_pointer
      # Increment counter 
      i += 1
    end
    # Value was not found in the list, return false
    return nil
  end 
end
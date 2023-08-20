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
    new_node = new.Node(value, head)

    # Change the head of the list to newly created node
    head = new_node
  end

  # Adds new node containing passed value to the end of the list.
  def append(value)
    # Create new node.
    # Node data is the value passed
    new_node = new.Node(value)

    # Have the tail of the list point to new_node
    tail.pointer(new_node)

    # Make new_node the new tail of the list
    tail = new_node
  end

  # Returns total number of nodes in the list
  def size
    # Set first node to the head of the list
    node = head

    # intialize a counter
    i = 1

    # Loop through until you reach the tail of the list.
    until node.pointer == nil
      # Increment the counter by 1.
      i += 1

      # Set node equal to the next node
      node = node.pointer
    end

    # Return the size of of the list
    return i
  end
end 
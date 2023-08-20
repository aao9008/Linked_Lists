class Linked_List
  # Initialize list with first node
  def initialize(node)
    # First node in list is both the head and tail
    @head = node
    @tail = node
  end
  attr_accessor :head, :tail

  # Adds new node containing passed value to the start of the list
  def append(value)
    # Create new node.
    # Node data is the value passed
    # New node will point to the head of the list
    new_node = new.Node(value, head)

    # Change the head of the list to newly created node
    head = new_node
  end 
end 
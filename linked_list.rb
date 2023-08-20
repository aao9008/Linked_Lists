class Linked_List
  # Initialize list with first node
  def initialize(node)
    # First node in list is both the head and tail
    @head = node
    @tail = node
  end
  attr_accessor :head, :tail
end 
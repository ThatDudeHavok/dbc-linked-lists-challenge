class LinkedList
  attr_reader :linked_node

  def initialize
    @linked_node = nil
  end

  def insert_first(node)
    @linked_node = node
  end
end

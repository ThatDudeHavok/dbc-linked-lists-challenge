class Node
  attr_reader :element, :linked_node

  def initialize(element)
    @element = element
    @linked_node = nil
  end

  def insert_after(other_node)
    @linked_node = other_node
  end
end

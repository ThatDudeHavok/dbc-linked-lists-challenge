require 'rspec'
require_relative 'node'

describe 'node' do
  context '#new' do
    it 'contains correct element' do
      node = Node.new('thingy')
      expect(node.element).to eq 'thingy'
    end
  end
  context '#insert_after' do
    it 'links parent node to a child' do
      parent_node = Node.new('parent')
      child_node = Node.new('child')
      parent_node.insert_after(child_node)
      expect(parent_node.linked_node).to be child_node
    end
  end
end

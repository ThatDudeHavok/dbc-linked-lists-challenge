require 'rspec'
require_relative 'node'

describe 'node' do
  let(:first_node) { Node.new('first') }
  let(:node_with_link) { first_node.insert_after(Node.new('second')) }
  context '#new' do
    it 'contains correct element' do
      expect(first_node.element).to eq 'first'
    end
  end
  context '#insert_after' do
    it 'links parent node to a child' do
      child_node = Node.new('child')
      first_node.insert_after(child_node)
      expect(first_node.linked_node).to be child_node
    end
  end
  context '#remove_after' do
    it 'removes child node' do
      node_with_link.remove_after()
      expect(node_with_link.linked_node).to be nil 
    end
  end
end

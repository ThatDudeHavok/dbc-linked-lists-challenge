require 'rspec'
require_relative 'node'

describe 'node' do
  let(:first_node) { Node.new('first') }
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
end

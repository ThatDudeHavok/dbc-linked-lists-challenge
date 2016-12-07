require 'rspec'

require_relative 'linked_list'
require_relative 'node'

describe 'LinkedList' do
  let (:list) { LinkedList.new }
  context '#new' do
    it 'instantiates a new linked list' do
      expect(LinkedList.new).to be_kind_of(LinkedList)
    end
  end
  context '#insert_first' do
    it 'inserts element at front of list' do
      node = Node.new('first')
      list.insert_first(node)
      expect(list.linked_node).to match(node)
    end
  end
end

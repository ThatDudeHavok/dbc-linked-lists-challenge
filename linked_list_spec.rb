require 'rspec'

require_relative 'linked_list'

describe 'LinkedList' do
  context '#new' do
    it 'instantiates a new linked list' do
      expect(LinkedList.new).to be_kind_of(LinkedList)
    end
  end
end

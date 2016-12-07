require 'rspec'
require_relative 'node'

describe 'node' do
  context '#new' do
    it 'contains correct element' do
      node = Node.new('thingy')
      expect(node.element).to eq 'thingy'
    end
  end
end

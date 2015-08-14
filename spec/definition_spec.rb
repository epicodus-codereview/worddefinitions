require 'rspec'
require "./lib/definition"

describe Definition do

  before do
    @test_definition = Definition.new('a type of dog breed')
  end

  describe '#define' do
    it 'creats a definition for word' do
      expect(@test_definition.define).to eq 'a type of dog breed'
    end
  end

  describe "#all_definitions" do
    it("creats am empty array for definition") do
      expect(Definition.all_definitions).to eq([])
    end
  end
end

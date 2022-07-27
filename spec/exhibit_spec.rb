require './lib/exhibit'
require './lib/patron'

RSpec.describe Exhibit do
  let!(:exhibit) { Exhibit.new({name: "Gems and Minerals", cost: 0}) }
  context 'exhibit' do
    it 'exists' do 
      expect(exhibit).to be_a(Exhibit)
    end

    it 'has details' do
      expect(exhibit.name).to eq("Gems and Minerals")
      expect(exhibit.cost).to eq(0)
    end
  end
end
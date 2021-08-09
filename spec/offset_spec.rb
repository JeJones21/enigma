require './lib/offset'

RSpec.describe Offset do
  context 'initialize' do
    offset = Offset.new

    it "exists and has readable attributes" do
      expect(offset).to be_an_instance_of(Offset)

      expected = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " "]
      expect(offset.date).to eq("080821")
      expect(offset.character_set).to eq(expected)
      expect(offset.character_set.class).to eq(Array)
      expect(offset.character_set.length).to eq(27)
    end

    it "can square the date" do
      allow(offset).to receive(:current_date).and_return("080821")

      expect(offset.square_date).to eq(6532034041)
    end
  end
end

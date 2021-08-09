require './lib/offset'

RSpec.describe Offset do
  context 'initialize' do
    offset = Offset.new

    it "exists and has readable attributes" do
      expect(offset).to be_an_instance_of(Offset)

      expected = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " "]

      expect(offset.character_set).to eq(expected)
      expect(enigma.character_set.class).to eq(Array)
      expect(enigma.character_set.length).to eq(27)
    end
  end
end

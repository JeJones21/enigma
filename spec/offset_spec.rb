require './lib/offset'

RSpec.describe Offset do
  context 'initialize' do
    offset = Offset.new

    it "exists and has readable attributes" do
      expect(offset).to be_an_instance_of(Offset)

      expected = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " "]
      # expect(offset.date).to eq("080821")
      expect(offset.character_set).to eq(expected)
      expect(offset.character_set.class).to eq(Array)
      expect(offset.character_set.length).to eq(27)
    end

    it "can square the date" do
      allow(offset).to receive(:current_date).and_return("080821")

      expect(offset.square_date).to eq(6532034041)
    end

    it "can convert the squared date to strings" do
      allow(offset).to receive(:current_date).and_return("080821")

      expected = ["6", "5", "3", "2", "0", "3", "4", "0", "4" , "1"]

      expect(offset.splits).to eq(expected)
    end

    it "can extract the last 4 strings" do
      allow(offset).to receive(:current_date).and_return("080821")

      expect(offset.last_four_strings).to eq(["4", "0", "4" , "1"])
    end

    it "can convert back to integers to create offset_shift" do
      allow(offset).to receive(:current_date).and_return("080821")

      expect(offset.offset_shift).to eq([4, 0, 4, 1])
    end

    # it "can create a complete shift" do
    #
    # end
    # it "can join all the offset helper methods to create actual offset" do
    #   allow(offset).to receive(:current_date).and_return("080821")
    #
    #   expect(offset.acutal_offset).to eq(4041)
    # end
  end 
end

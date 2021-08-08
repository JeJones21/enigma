require 'date'
require './lib/enigma'

RSpec.describe Enigma do
  context 'initialize' do
    enigma = Enigma.new
    it "exists and has readable attributes" do
      expect(enigma).to be_a(Enigma)
      expect(enigma.character_set.class).to eq(Array)
      expect(enigma.character_set.length).to eq(27)
    end

    it "can return today's date" do
      expect(enigma.current_date.class).to eq(String)
      expect(enigma.current_date.length).to eq(6)
    end

    it "can create a randomized key" do
      expect(enigma.randomized_key).to be_a(String)
      expect(enigma.randomized_key.length).to eq(5)
    end
  end
end

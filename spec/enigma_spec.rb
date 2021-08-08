require 'date'
require './lib/enigma'

RSpec.describe Enigma do
  context 'initialize' do
    enigma = Enigma.new
    it "exists" do
      expect(enigma).to be_a(Enigma)
    end

    it "has attributes" do
      expect(enigma.character_set.class).to eq(Array)
      expect(enigma.character_set.length).to eq(27)
    end
  end


end

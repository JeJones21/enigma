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

  end
end

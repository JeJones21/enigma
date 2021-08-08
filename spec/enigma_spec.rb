require 'date'
require './lib/enigma'

RSpec.describe Enigma do
  context 'initialize' do
    enigma = Enigma.new

    it "exists" do
      expect(enigma).to be_a(Enigma)
    end
  end


end

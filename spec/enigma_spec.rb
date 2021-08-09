require 'date'
require './lib/enigma'
require './lib/key'
require './lib/offset'
require_relative 'spec_helper'

RSpec.describe Enigma do
  context 'initialize' do
    enigma = Enigma.new

    it "exists and has readable attributes" do
      expect(enigma).to be_a(Enigma)
    end

    it "can create a complete shift combining keys and offsets" do
      expect(enigma.complete_shift([40, 02, 20, 05], [4, 0, 4, 1])).to eq([44, 02, 24, 6])
    end
  end
end

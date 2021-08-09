require 'date'
require './lib/enigma'
# require_relative 'spec_helper'

RSpec.describe Enigma do
  context 'initialize' do
    enigma = Enigma.new

    it "exists and has readable attributes" do
      expect(enigma).to be_a(Enigma)

    end
  end
end

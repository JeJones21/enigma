require_relative 'spec_helper'
require './lib/key'

RSpec.describe Key do
  describe 'Object Creation' do
    it 'exists' do
      key = Key.new

      expect(key).to be_a(Key)
    end

    it 'has readable attributes' do
      key = Key.new

      expect(key.key).to be_a(String)
      expect(key.key.length).to eq(5)
    end
  end

  describe 'Object Methods' do
    it "can randomize keys" do
      key = Key.new

      expect(key.randomized_key).to be_a(String)
      expect(key.randomized_key.length).to eq(5)

      allow(key).to receive(:randomized_key).and_return("08888")
      expect(key.randomized_key).to eq("08888")
    end

    it "can create keys" do
      key = Key.new

      expect(key.keys("40205")).to eq([40, 02, 20, 05])
    end


    it "can return today's date" do
      expect(enigma.current_date.class).to eq(String)
      expect(enigma.current_date.length).to eq(6)
    end
  end
end

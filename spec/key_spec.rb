require_relative 'spec_helper'
require './lib/key'

RSpec.describe Key do
  context 'Object Creation' do
    key = Key.new

    it 'exists' do
      expect(key).to be_a(Key)
    end

    it 'has readable attributes' do
      expect(key.key).to be_a(String)
      expect(key.key.length).to eq(5)
    end
  end

  context 'Object Methods' do
    key = Key.new

    it "can randomize keys" do

      expect(key.randomized_key).to be_a(String)
      expect(key.randomized_key.length).to eq(5)

      allow(key).to receive(:randomized_key).and_return("08888")
      expect(key.randomized_key).to eq("08888")
    end

    it "can create keys" do

      expect(key.keys("40205")).to eq([40, 02, 20, 05])
      expect(key.keys("05746")).to eq([05, 57, 74, 46])
    end
    #
    #
    # it "can return today's date" do
    #
    #   expect(key.current_date.class).to eq(String)
    #   expect(key.current_date.length).to eq(6)
    # end
    #
    # it "creates an offset with the date" do
    #
    #   expect(key.offset_shift("040895")).to eq([1, 0, 2, 5])
    # end
  end
end

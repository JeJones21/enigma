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

    it "can create keys A..D" do
      key = Key.new

      expected = {
                  :a_key=>"02",
                  :b_key=>"27",
                  :c_key=>"71",
                  :d_key=>"15"
      }
      expect(key.key_hash).to eq(expected)

    end
  end
end

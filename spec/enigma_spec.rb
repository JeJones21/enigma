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

    it "can encrypt a message with a key and date" do
      expected1 = {
                  encryption: "keder ohulw",
                  key: "02715",
                  date: "040895"
                }

      expect(enigma.encrypt("hello world", "02715", "040895")).to eq(expected1)
    end

    it "can use current date and randomized_key if not provided" do
      allow(enigma).to receive(:current_date).and_return("090821")
      allow(enigma).to receive(:randomized_key).and_return("01234")

      expect(enigma.encrypt("pura vida")[:encryption]).to eq("ufriegilf")
    end

    it "can account for unexpected characters" do
      expected2 = {
                  encryption: "keder ohulw!",
                  key: "02715",
                  date: "040895"
                }
      expect(enigma.encrypt("hello world!", "02715", "040895")).to eq(expected2)
    end

    it "can account for uppercase edge cases" do
      expected3 = {
                  encryption: "keder ohulw",
                  key: "02715",
                  date: "040895"
                }
      expect(enigma.encrypt("HELLO WORLD", "02715", "040895")).to eq(expected3)
    end

    it "can decrypt messages" do
      expected4 = {
                  decryption: "hello world",
                  key: "02715",
                  date: "040895"
                }
      expect(enigma.decrypt("keder ohulw", "02715", "040895")).to eq(expected4)
    end

    it "can decrypt a message if date is not given" do
      allow(enigma).to receive(:current_date).and_return("090821")
      encrypted = enigma.encrypt("hello world", "02715")
      expected5 = {
                  decryption: "hello world",
                  key: "02715",
                  date: "090821"
                }
      expect(enigma.decrypt(encrypted[:encryption], "02715")).to eq(expected5)
    end
  end
end

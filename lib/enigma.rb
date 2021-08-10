require 'date'
require './lib/encryptionable'

class Enigma
  include Encryptionable

  attr_reader :offset,
              :character_set

  def initialize
    @offset = Offset.new
    @character_set = ("a".."z").to_a << " "
  end

  def current_date
    #this is a helper method
    Date.today.strftime("%d%m%y")
  end

  def complete_shift(keys, offsets)
    shifts = []
    shifts << keys[0] + offsets[0]
    shifts << keys[1] + offsets[1]
    shifts << keys[2] + offsets[2]
    shifts << keys[3] + offsets[3]
    shifts
  end

  def randomized_key
    #error else without rescue is useless
    rand(99999).to_s.rjust(5, "0")
  end

  def keys(key)
    shifts = []
    shifts << key[0..1].to_i
    shifts << key[1..2].to_i
    shifts << key[2..3].to_i
    shifts << key[3..4].to_i
    shifts
  end

  def offset_shift(date)
    square_date = (date.to_i) ** 2
    string_array = square_date.to_s.split('')[-4..-1]
    string_array.map do |string|
      string.to_i
    end
    # @offset.last_four_strings.map { |string| string.to_i  }
  end

  def encrypt(message, key = randomized_key, date = current_date)
    shifts = complete_shift(keys(key), offset_shift(date))
    letters = message.downcase.split("")
    encrypted_characters(letters, shifts, key, date)
  end

  def decrypt(ciphertext, key, date = current_date)
    shifts = complete_shift(keys(key), offset_shift(date))
    letters = ciphertext.downcase.split("")
    decrypted_characters(letters, shifts, key, date)
  end
end

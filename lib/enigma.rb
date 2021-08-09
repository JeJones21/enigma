require 'date'
class Enigma

  attr_reader :character_set

  def initialize
  end

  def complete_shift(keys, offsets)
    shifts = []
    shifts << keys[0] + offsets[0]
    shifts << keys[1] + offsets[1]
    shifts << keys[2] + offsets[2]
    shifts << keys[3] + offsets[3]
    shifts
  end

  # def randomized_key
  #   5.times.map{rand(10)}.join
  # end
  #
  # def create_keys
  #
  # end
end

require 'date'
class Enigma

  attr_reader :character_set

  def initialize
    @character_set = ("a".."z").to_a << " "
  end



  # def randomized_key
  #   5.times.map{rand(10)}.join
  # end
  #
  # def create_keys
  #
  # end
end

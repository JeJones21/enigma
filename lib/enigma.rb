require 'date'
class Enigma

  attr_reader :character_set

  def initialize
    @character_set = ("a".."z").to_a << " "
  end

  def current_date
    Date.today.strftime("%d%m%y")
  end
end

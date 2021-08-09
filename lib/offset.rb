require 'date'

class Offset

  attr_reader :date,
              :character_set

  def initialize(date = current_date)
    @date = date
    @character_set = ("a".."z").to_a << " "
  end
end

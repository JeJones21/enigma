require 'date'

class Offset

  attr_reader :date,
              :character_set

  def initialize(date = current_date)
    @date = date
    @character_set = ("a".."z").to_a << " "
  end

  def current_date
    #this is a helper method for offset.
    Date.today.strftime("%d%m%y")
  end
end

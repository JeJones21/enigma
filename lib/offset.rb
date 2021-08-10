require 'date'

class Offset

  attr_reader :character_set,
              :date

  def initialize
    @date = date
    @character_set = ("a".."z").to_a << " "
  end

  def current_date
    #this is a helper method
    Date.today.strftime("%d%m%y")
  end

  def square_date
    (current_date.to_i ** 2)
  end

  def splits
    square_date.to_s.split('')
  end

  def last_four_strings
    splits[-4, 4]
  end

  def offset_shift
    last_four_strings.map { |string| string.to_i  }
  end
end

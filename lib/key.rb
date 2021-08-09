class Key

  attr_reader :key

  def initialize(key = nil)
    @key ||= randomized_key
  end

  def randomized_key
    #error else without rescue is useless
    rand(99999).to_s.rjust(5, "0")
    # if key == 'random'
    #   @test_key =  5.times.map{rand(10)}.join
    # else
    #   @test_key = key
    # end
  end

  def keys(key)
    shifts = []
    shifts << key[0..1].to_i
    shifts << key[1..2].to_i
    shifts << key[2..3].to_i
    shifts << key[3..4].to_i
    shifts
  end

  def current_date
    #this is a helper method for offset.
    Date.today.strftime("%d%m%y")
  end
end

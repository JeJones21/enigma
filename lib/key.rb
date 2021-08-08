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
end

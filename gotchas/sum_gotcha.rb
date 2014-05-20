class SumGotcha < Gotcha::Base

  DEFAULT_MIN = 0
  DEFAULT_MAX = 20

  def initialize
    rand1 = self.class.random_number_in_range
    rand2 = self.class.random_number_in_range
    @question = ["¿Cual es la suma de #{rand1} y #{rand2}?", "¿Cuánto es #{rand1} + #{rand2}?"][rand(2)]
    @answer = rand1 + rand2
  end

  private

  def self.max
    @@max ||= DEFAULT_MAX
  end

  def self.min
    @@min ||= DEFAULT_MIN
  end

  def self.random_number_in_range
    rand(self.max - self.min) + self.min
  end

end

Gotcha.register_type SumGotcha

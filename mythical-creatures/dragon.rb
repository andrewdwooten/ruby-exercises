class Dragon
  attr_reader :name, :rider, :color, :hunger

  def initialize(name, color, rider)
    @name = name
    @rider = rider
    @color = color
    @hunger = true
    @meals_eaten = 0
  end

  def hungry?
    @meals_eaten < 3 ? true : false
  end

  def eat
    @meals_eaten += 1
  end
end

class Wizard
  attr_reader :name, :bearded, :rested

  def initialize(name, beard_status={bearded: true})
    @name = name
    @bearded = beard_status[:bearded]
    @rested = true
    @cast_count = 0
  end

  def bearded?
    bearded
  end

  def incantation(spell)
    "sudo #{spell}"
  end

  def rested?
    rested
  end

  def cast
    update_cast_and_rest
    "MAGIC MISSILE!"
  end

  def update_cast_and_rest
    @cast_count += 1
    if @cast_count >= 3
      @rested = false
    end
  end
end

class Hobbit
  attr_reader :name, :disposition, :age

  def initialize(name, disposition='homebody')
    @name = name
    @disposition = disposition
    @age = 0
  end

  def celebrate_birthday
    @age += 1
  end

  def adult?
    age < 33 ? false : true
  end

  def old?
    age < 101 ? false : true
  end

  def has_ring?
    name == 'Frodo' ? true : false
  end

  def is_short?
    true
  end
end

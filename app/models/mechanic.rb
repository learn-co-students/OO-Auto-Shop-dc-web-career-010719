class Mechanic

  attr_reader :name, :specialty
  @@all = []

  def initialize(name:, specialty:)
    @name = name
    @specialty = specialty
    @@all << self
  end

  def self.all
    @@all
  end

  def cars
    Car.all.select { |c| c.mechanic == self }
  end

  def customers
    self.cars.map(&:owner).uniq
  end

  def customer_names
    self.customers.map(&:name)
  end

end

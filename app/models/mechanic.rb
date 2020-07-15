class Mechanic
  attr_reader :name, :specialty
  @@all = []

  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    @@all << self
  end

  def self.all
    @@all
  end

  def cars_i_fix
    Car.all.select {|car| car.mechanic == self}
  end

  def my_customers
    self.cars_i_fix.map {|car| car.owner}
  end

  def my_customers_names
    self.my_customers.map {|customer| customer.name}
  end
end

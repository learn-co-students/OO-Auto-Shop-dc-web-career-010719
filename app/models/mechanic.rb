class Mechanic

  attr_reader :name, :specialty

  @@all = []

  def initialize(name=rand_name, specialty)
    @name = name
    @specialty = specialty
    self.class.all << self
  end

  def self.all
    @@all
  end

  def all_cars_serviced
    #returns objects of all cars serviced by instance of mechanic
    Car.all.find_all {|car| car.mechanic == self}
  end

  def all_customers
    #returns objects of owners that see this instance of mechanic
    self.all_cars_serviced.collect &:owner
  end

  def all_customers_names
    #returns name strings of all customers of this mechanic instance
    self.all_customers.collect &:name
  end

  def rand_name
    #random name generator for Mechanic.new(otional_name="name", specialty)
    mechanic_names = %w(Pete Steve Kyle Tom Jerry Mike Pat Tim Terry Harry Jeff Ed Jim)
    mechanic_names.sample
  end

end

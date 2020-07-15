class CarOwner

  attr_reader :name
  attr_accessor :cars_owned #returns list of all cars owner instance owns

  @@all = []


  def initialize(name)
    @name = name
    @cars_owned = []
    self.class.all << self
  end

  def self.all
    #returns list of all owners
    @@all
  end

  def buy_car(make, model, classification)
    new_car = Car.new(make, model, classification)
    self.cars_owned << new_car
    new_car.owner = self
  end

  def mechanics_used
    #returns instances of mechanic class employed by self
    self.cars_owned.collect &:mechanic
  end

  def self.avg_cars_owned
    #returns float: average amount of cars owned for all owner instances of class
    cars_owned_array = self.all.collect {|owner| owner.cars_owned.count}
    cars_owned_array.inject {|sum, el| sum + el}.to_f / cars_owned_array.count
  end

end

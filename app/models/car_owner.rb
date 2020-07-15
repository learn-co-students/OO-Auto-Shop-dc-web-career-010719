class CarOwner

  attr_reader :name
  attr_accessor :cars

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @cars = []
  end

  def self.all
    @@all
  end

  def all_owners_cars
    @cars
  end

  def all_owners_mechanics
    all_owners_cars.map{ |car| car.mechanic}.uniq
  end

  def self.average_cars

    total_cars_by_user = self.all.map{|owner| owner.all_owners_cars.size.to_f}
    total = total_cars_by_user.inject{|sum, n| sum + n}
    total / self.all.size.to_f

  end


end


# CarOwner

class CarOwner

  attr_reader :name

  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    return @@all
  end

  def all_my_cars
    array = []
    Car.all.each do |car|
      if car.owner == self && !array.include?(car)
        array << car
      end
    end
    return array
  end

  def all_my_mec
    array = []
    Car.all.each do |car|
      if car.owner == self && !array.include?(car.mech)
        array << car.mech
      end
    end
    return array
  end

  def self.avg_of_cars
    return Car.all.size.to_f/CarOwner.all.size

  end


end

class Mechanic

  attr_reader :name, :specialty

  @@all = []

  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    @@all << self
  end

  def self.all
    return @@all
  end

  def all_my_cars
    array = []
    Car.all.each do |car|
      if car.mech == self && !array.include?(car)
        array << car
      end
    end
    return array
  end

  def all_owner_to_mech
    array = []
    Car.all.each do |car|
      if car.mech == self && !array.include?(car.owner)
        array << car.owner
      end
    end
    return array
  end

  def all_owner_name_to_mech
    array = []
    Car.all.each do |car|
      if car.mech == self && !array.include?(car.owner.name)
        array << car.owner.name
      end
    end
    return array
  end



end

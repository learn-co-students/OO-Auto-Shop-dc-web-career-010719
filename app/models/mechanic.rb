class Mechanic

  attr_reader :name, :specialty, :cars, :car_owners

  @@all = []

  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    @@all << self
    @cars = []
    @car_owners = []
  end

  def self.all
    @@all
  end

  def car_owner_names
    self.car_owners.collect do |car_owner|
      car_owner.name
    end
  end

end

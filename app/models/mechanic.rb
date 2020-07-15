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

  # def self.has_expertise(specialty)
  #   Car.with_classification(specialty)
  # end

  def self.with_specialty(specialty)
    self.all.select { |mechanic| mechanic.specialty == specialty }
  end

  def cars
    Car.for_mechanic(self)
  end

  def supported_cars
    Car.with_classification(self.specialty)
  end

  def car_owners
    self.cars.map do |car|
      car.owner
    end.uniq.compact
  end

  def car_owner_names
    car_owners.map { |owner| owner.name }
  end
end

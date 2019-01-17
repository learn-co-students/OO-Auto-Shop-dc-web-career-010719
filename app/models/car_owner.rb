class CarOwner

  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def buy_car(make:, model:, classification:)
    Car.new(make:make, model:model, classification:classification, owner:self)
  end

  def select_mechanic(car_make:, car_model:, mechanic_name:)
    car = self.cars.find { |car| car.make == car_make && car.model == car_model }
    mechanic = Mechanic.all.find { |mech| mech.name == mechanic_name }
    car.mechanic = mechanic
  end

  def cars
    Car.all.select { |c| c.owner == self }
  end

  def mechanics
    self.cars.map { |c| c.mechanic }
  end

  def self.avg_car_amount
    car_nums = self.all.map { |o| o.cars.size }
    (car_nums.inject(:+).to_f/(car_nums.size)).round(2)
  end

end

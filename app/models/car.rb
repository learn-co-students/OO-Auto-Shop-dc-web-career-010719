class Car

  attr_reader :make, :model, :classification, :mechanic
  attr_accessor :owner

  @@all = []

  def initialize(make, model, classification)
    @make = make
    @model = model
    @classification = classification
    @mechanic = assign_mechanic(self, classification)
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.all_classifications
    #returns strings of all unique classifications for class Car.
    self.all.collect {|car| car.classification}.uniq
  end

  def get_qualified_mechanic
    #returns objects of qualified mechanics for instance of car in an array
    Mechanic.all.find_all {|mechanic| mechanic.specialty == self.classification}
  end

  def assign_mechanic(car_instance, classification)
    #checks to see if a qualified mechanic exists to work on the car
    #assigns to car if exists
    #creates one if needed and assigns that  car.
    if Mechanic.all.any? {|mechanic| mechanic.specialty == classification}
      return Mechanic.all.find do |mechanic| #assignment
        mechanic.specialty == classification
      end
    else
      return Mechanic.new(classification)
    end
  end

end

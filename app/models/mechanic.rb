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

    def cars
      Car.all.select{|car| car.mechanic == self}
    end

    def owners
      self.cars.collect{|car| car.owner}
    end

    def owners_names
      self.owners.collect{|owner| owner.name}
    end

end

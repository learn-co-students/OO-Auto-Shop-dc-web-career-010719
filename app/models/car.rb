class Car

  attr_reader :make, :model, :classification, :owner, :mechanic
  @@all = []
  @@classifications = []
    def initialize(make, model, classification, owner, mechanic)
      @make = make
      @model = model
      @classification = classification
      @owner = owner
      @mechanic = mechanic
      @@classifications << classification
      @@all << self
    end

    def self.all
      @@all
    end

    def self.classifications
      @@classifications
    end

    def classification_mechanics
      Mechanic.all.select{|mechanic|
        mechanic.specialty == self.classification}
    end
end

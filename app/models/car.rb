class Car

  attr_reader :make, :model, :owner, :mechanic, :classification
  @@all = []

  def initialize(make, model, classification, owner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @owner = owner
    @mechanic = mechanic
    @@all << self
  end

  def self.classifications_all
  	@@all.collect do |car|
  		car.classification
  	end.uniq
  end

  def clas_mech
    Mechanic.all.select do |mechanic|
    	mechanic.specialty == self.mechanic.specialty
    end
  end

  def self.all 
  	@@all 
  end

end

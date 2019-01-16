class Car

  attr_reader :make, :model,:classification, :owner, :mech
  @@all = []
  def initialize(make, model, classification, owner = nil, mech = nil)
    @make = make
    @model = model
    @classification = classification
    @owner = owner
    @mech = mech
    @@all << self
  end

  def self.all
    return @@all
  end

  def self.all_class
    array = []
    self.all.each do |x|
      array<< x.classification
    end
    return array
  end

  def find_a_mech
    array = []
    Mechanic.all.each do|mech|
      if mech.specialty == self.classification && !array.include?(mech)
        array << mech
      end
    end
  end



end

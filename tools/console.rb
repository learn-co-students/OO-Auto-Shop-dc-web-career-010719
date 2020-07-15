require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

james = CarOwner.new("James")
laura = CarOwner.new("Laura")
rich = CarOwner.new("Rich")
mollie = CarOwner.new("Mollie")
lee = CarOwner.new("Lee")
huw = CarOwner.new("Huw")


mech1 = Mechanic.new("Mech1", "Family")
mech2 = Mechanic.new("Mech2", "Rally")
mech3 = Mechanic.new("Mech3", "Old")


ody = Car.new("Honda", "Odyssey", "Family", james, mech1)
acc = Car.new("Honda", "Accord", "Commuter", rich, mech1)
fit = Car.new("Honda", "Fit", "MomCar", laura, mech2)
maz = Car.new("Mazda", "3", "CollegeCar", mollie, mech2)
sub = Car.new("Subaru", "WRX", "Rally", lee, mech3)
tau = Car.new("Ford", "Taurus", "Old", james, mech2)
sam = Car.new("Ford", "Escort", "CollegeCar", huw, mech1)

puts CarOwner.all == [james, laura, rich, mollie, lee, huw]
puts james.cars == [ody, tau]
puts huw.cars == [sam]
puts james.mechanics == [mech1, mech2]
puts CarOwner.average_cars

puts Car.all == [ody, acc, fit, maz, sub, tau, sam]
puts Car.classifications.uniq
puts ody.classification_mechanics == [mech1]

puts Mechanic.all == [mech1, mech2, mech3]
puts mech1.cars == [ody, acc, sam]
puts mech1.owners == [james, rich, huw]
puts mech1.owners_names == ["James", "Rich", "Huw"]


binding.pry
Puts "hi"
d

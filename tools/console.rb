require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# setup

owner1 = CarOwner.new("o1")
owner2 = CarOwner.new("o2")

mechanic1 = Mechanic.new("m1", "sedan")
mechanic2 = Mechanic.new("m2", "sports")

car1 = Car.new("make1", "model1", "sedan", owner1, mechanic1)
car2 = Car.new("make2", "model2", "sports", owner1, mechanic2)
car3 = Car.new("make2", "model2", "sports", owner2, mechanic1)

# tests

puts "Get a list of all owners: "
puts CarOwner.all == [owner1, owner2]
puts "---\n\n"

puts "Get a list of all the cars that a specific owner has: "
puts Car.for_owner(owner1) == [car1, car2]
puts Car.for_owner(owner2) == [car3]
puts "---\n\n"

puts "Get a list of all the mechanics that a specific owner goes to: "
puts owner1.mechanics == [mechanic1, mechanic2]
puts owner2.mechanics == [mechanic1]
puts "---\n\n"

puts "Get the average amount of cars owned for all owners: "
puts CarOwner.average_cars_owned
puts "---\n\n"

# **Car**

"Get a list of all cars: "
puts Car.all == [car1, car2, car3]
puts "---\n\n"

puts "Get a list of all car classifications: "
puts Car.classifications == [car1.classification, car2.classification, car3.classification].uniq
puts "---\n\n"

puts "Get a list of mechanics that have an expertise that matches the car classification: "
puts car1.supported_mechanics == [mechanic1]
puts car2.supported_mechanics == [mechanic2]
puts "---\n\n"

# **Mechanic**

puts "Get a list of all mechanics: "
puts Mechanic.all == [mechanic1, mechanic2]
puts "---\n\n"

puts "Get a list of all cars that a mechanic services: "
puts mechanic1.supported_cars == [car1]
puts mechanic2.supported_cars == [car2, car3]
puts "---\n\n"

puts "Get a list of all the car owners that go to a specific mechanic: "
puts mechanic2.car_owners == [owner1]
puts mechanic1.car_owners == [owner1, owner2]
puts "---\n\n"

puts "Get a list of the names of all car owners who go to a specific mechanic: "
puts mechanic2.car_owner_names == [owner1.name]
puts mechanic1.car_owner_names == [owner1.name, owner2.name]
puts "---\n\n"

# binding.pry
# 0

require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


phil = CarOwner.new("Phil")
bob = CarOwner.new("Bob")
john = CarOwner.new("John")

car_one = Car.new("Ford", "Explorer", "new")
car_two = Car.new("Chevy", "Berretta", "clunker")
car_three = Car.new("Chevy", "Impala", "new")
car_four = Car.new("Ford", "F-150", "new")
car_five = Car.new("Lambourghini", "Gellado", "exotic")

paul = Mechanic.new("Paul", "new")
jake = Mechanic.new("Jake", "clunker")
melanie = Mechanic.new("Melanie", "new")

puts "self.all functions"
puts CarOwner.all.size == 3
puts Car.all.size == 5
puts Mechanic.all.size == 3

car_one.assign_to_owner(phil)
car_one.assign_to_mechanic(paul)
car_two.assign_to_owner(phil)
car_two.assign_to_mechanic(jake)
car_three.assign_to_owner(phil)
car_three.assign_to_mechanic(paul)
car_four.assign_to_owner(bob)
car_four.assign_to_mechanic(paul)
car_five.assign_to_owner(john)
car_five.assign_to_mechanic(paul)

puts "--- car owner"

# puts phil.all_owners_cars
puts phil.all_owners_cars.size == 3

puts phil.all_owners_mechanics.size == 2

puts CarOwner.average_cars


puts "--- car"

# puts Car.car_classifications
puts Car.car_classifications.size == 3

puts car_one.viable_mechanics.size == 2
puts car_two.viable_mechanics.size == 1
puts car_five.viable_mechanics.size == 0


puts "--- mechanic"

puts paul.cars_by_mechanic.size == 3
puts jake.cars_by_mechanic.size == 1

puts paul.owners_by_mechanics.size == 2
puts jake.owners_by_mechanics.size == 1

puts paul.owner_names_by_mechanic
puts jake.owner_names_by_mechanic





# binding.pry
0

# CarOwner
#
# Get a list of all owners
# Get a list of all the cars that a specific owner has
# Get a list of all the mechanics that a specific owner goes to
# Get the average amount of cars owned for all owners
#
# Car
#
# Get a list of all cars
# Get a list of all car classifications
# Get a list of mechanics that have an expertise that matches the car classification
#
# Mechanic
#
# Get a list of all mechanics
# Get a list of all cars that a mechanic services
# Get a list of all the car owners that go to a specific mechanic
# Get a list of the names of all car owners who go to a specific mechanic

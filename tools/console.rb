require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

joe = Mechanic.new(name:"Joe", specialty: "clunker")
jose = Mechanic.new(name:"Jose", specialty: "exotic")
joseph = Mechanic.new(name:"Joseph", specialty: "antique")

me = CarOwner.new("Heloise")
mom = CarOwner.new("Marie")
dad = CarOwner.new("Philippe")

vw = Car.new(make:"VW", model: "GTI", classification: "clunker", owner: me, mechanic: joe)
aston = Car.new(make: "Aston Martin", model: "DB4", classification: "antique", owner: me, mechanic:joseph)
audi = Car.new(make:"Audi", model: "Q5", classification: "exotic", owner:mom, mechanic:jose)
porsche = Car.new(make:"Porsche", model: "911", classification: "antique", owner:dad, mechanic:joseph)


puts "CarOwner Tests:"
puts "Get a list of all owners"
puts CarOwner.all == [me, mom, dad]
puts "\n"

puts "Get a list of all the cars that a specific owner has"
puts me.owners_cars == [vw, aston]
puts mom.owners_cars == [audi]
puts dad.owners_cars == [porsche]
puts "\n"

puts "Get a list of all the mechanics that a specific owner goes to"
puts me.owners_mechanics == [joe, joseph]
puts mom.owners_mechanics == [jose]
puts dad.owners_mechanics == [joseph]
puts "\n"

puts "Get the average amount of cars owned for all owners"
puts CarOwner.avg_amount == 1.33
puts "\n"

puts "Car Tests:"
puts "Get a list of all cars"
puts Car.all == [vw, aston, audi, porsche]
puts "\n"

puts "Get a list of all car classifications"
puts Car.classifications == ["clunker", "antique", "exotic"]
puts "\n"

puts "Get a list of mechanics that have an expertise that matches the car classification"
puts vw.mech_by_classification == [joe]
puts aston.mech_by_classification == [joseph]
puts audi.mech_by_classification == [jose]
puts porsche.mech_by_classification == [joseph]
puts "\n"

puts "Mechanic Tests:"
puts "Get a list of all mechanics"
puts Mechanic.all == [joe, jose, joseph]
puts "\n"

puts "Get a list of all cars that a mechanic services"
puts joe.mechanics_cars == [vw]
puts jose.mechanics_cars == [audi]
puts joseph.mechanics_cars == [aston, porsche]
puts "\n"

puts "Get a list of all the car owners that go to a specific mechanic"
puts joe.mechanics_owners == [me]
puts jose.mechanics_owners == [mom]
puts joseph.mechanics_owners == [me,dad]
puts "\n"

puts "Get a list of the names of all car owners who go to a specific mechanic"
puts joe.mechanics_ownernames == [me.name]
puts jose.mechanics_ownernames == [mom.name]
puts joseph.mechanics_ownernames== [me.name, dad.name]


binding.pry

"Cool"

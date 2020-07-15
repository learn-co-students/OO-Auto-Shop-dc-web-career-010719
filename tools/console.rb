require_relative '../config/environment.rb'
require "pry"

def reload
  load 'config/environment.rb'
end

puts "1.   - Get a list of all owners"
	sandy = CarOwner.new("Sandy")
	danny = CarOwner.new("Danny Zuko")
	riz = CarOwner.new("Rizzo")
	ken = CarOwner.new("Kenicky")

	puts CarOwner.all.length == 4

puts "2.   - Get a list of all cars"
	pheebs = Mechanic.new("Phoebe", "exotic")
	mon = Mechanic.new("Monica", "antique")
	rach = Mechanic.new("Rachel", "clunker")

	hana = Car.new("Honda", "Accord", "clunker", sandy, rach)
    dul = Car.new("Tesla", "Z600", "exotic", riz, pheebs)
    set = Car.new("Toyota", "Solaris", "antique", danny, mon)
    net = Car.new("Volkswagen", "Golf", "antique", ken, mon)

    puts Car.all.length == 4
    puts Car.all.include?(set)

puts "3.   - Get a list of all the cars that a specific owner has"
	daseot = Car.new("Toyota", "Corolla", "antique", sandy, mon)
	yeoseot = Car.new("BMW", "Series 8", "exotic", sandy, pheebs)

	puts sandy.cars.length == 3

puts "4.   - Get a list of all the mechanics that a specific owner goes to"
	puts sandy.mechanics.length == 3
	puts sandy.mechanics.include?(pheebs)

puts "5.   - Get a list of all mechanics"

	puts Mechanic.all.count == 3
	puts Mechanic.all.include?(rach)

puts "6.   - Get the average amount of cars owned for all owners"
	puts CarOwner.car_avg == 1.5

puts "7.   - Get a list of all car classifications"
	puts Car.classifications_all.include?("antique")
	puts Car.classifications_all.length == 3

puts "8.   - Get a list of mechanics that have an expertise that matches the car classification"
	ross = Mechanic.new("Ross", "antique")
	puts daseot.clas_mech.length == 2

puts "9.   - Get a list of all cars that a mechanic services"
	puts mon.cars.include?(daseot)

puts "10.  - Get a list of all the car owners that go to a specific mechanic"
	puts mon.car_owners.length == 3
	puts mon.car_owners.include?(sandy)

puts "11.   - Get a list of the names of all car owners who
  go to a specific mechanic"
  	puts mon.car_owner_names.length == 3
  	puts mon.car_owner_names.include?("Sandy")




binding.pry

puts "I truly know nothing about cars"

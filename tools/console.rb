require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

owner1 = CarOwner.new('Hai')
owner2 = CarOwner.new('Nathan')
owner3 = CarOwner.new('Vince')
car1 = Car.new('Honda', 'Vanilla', 'Trucks')
car2 = Car.new('Subaru', 'Cream', 'Trucks')
car3 = Car.new('Nessus', 'Mist', 'Buses')
car4 = Car.new('Camry', 'Sky', 'Buses')
car5 = Car.new('Toyota', 'Ground', 'Vans')
car6 = Car.new('Camry', 'Vanilla', 'Vans')
mechanic1 = Mechanic.new('Ron', 'Trucks')
mechanic2 = Mechanic.new('Lenny', 'Trucks')
mechanic3 = Mechanic.new('Bart', 'Buses')
mechanic4 = Mechanic.new('Bob', 'Buses')
mechanic5 = Mechanic.new('Adam', 'Vans')
mechanic6 = Mechanic.new('Dan', 'Vans')
owner1.take_a_car_to_a_mechanic(car1, mechanic1)
owner1.take_a_car_to_a_mechanic(car2, mechanic2)
owner2.take_a_car_to_a_mechanic(car3, mechanic3)
owner2.take_a_car_to_a_mechanic(car4, mechanic4)
owner3.take_a_car_to_a_mechanic(car5, mechanic5)
owner3.take_a_car_to_a_mechanic(car6, mechanic6)

binding.pry
0

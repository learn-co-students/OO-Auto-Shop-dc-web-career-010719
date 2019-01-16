require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


mec = Mechanic.new("MECCCC", "cars")
mec1 = Mechanic.new("fred" , "cars")
matt = CarOwner.new("matt")
fred = CarOwner.new("fred")
ted = CarOwner.new("ted")
car = Car.new("honda","model","cars",matt,mec)
car3 = Car.new("honda","model","good",ted,mec)
car1 = Car.new("fiat","model1","bad",fred, mec1)

puts Car.all.size == 3
puts Mechanic.all.size == 2
puts CarOwner.all.size == 3
puts Car.all_class
puts matt.all_my_cars[0] == car
puts matt.all_my_mec[0].name
puts CarOwner.avg_of_cars
puts mec1.all_my_cars[0] == car1
puts mec.all_owner_to_mech[1].name
puts mec.all_owner_name_to_mech
puts "HELKJL:J:"
puts car.find_a_mech

#binding.pry
0

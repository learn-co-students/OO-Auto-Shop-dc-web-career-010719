require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

shannon = CarOwner.new("Shannon")
matt = CarOwner.new("Matt")
ryan = CarOwner.new("Ryan")
kyle = Mechanic.new(name:"Kyle", specialty:"electric sports car")
chris = Mechanic.new(specialty:"sedan", name:"Chris")
phil = Mechanic.new(specialty:"sedan", name:"Phil")

accord = shannon.buy_car(make:"Honda", model:"Accord", classification:"sedan")
outback = shannon.buy_car(make:"Subaru", model:"Outback", classification:"hatchback")
ryan.buy_car(make:"BMW", model:"I8", classification:"electric sports car")
matt.buy_car(make:"Tesla", model:"S", classification:"electric sports car")
shannon.select_mechanic(car_make:"Honda", car_model:"Accord", mechanic_name:"Chris")
shannon.select_mechanic(car_make:"Subaru", car_model:"Outback", mechanic_name:"Chris")
ryan.select_mechanic(car_make:"BMW", car_model:"I8", mechanic_name:"Kyle")
matt.select_mechanic(car_make:"Tesla", car_model:"S", mechanic_name:"Kyle")

binding.pry

puts "Table 6 rules"

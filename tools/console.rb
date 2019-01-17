require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#test code/initialize
mike = CarOwner.new("Mike")
joe = CarOwner.new("Joe")
steve = CarOwner.new("Steve")
jim = Mechanic.new("Jim", "clunker")
jamie = Mechanic.new("Jamie", "exotic")
ross = Mechanic.new("Ross", "antique")
civic = Car.new("Honda", "Civic", "clunker", mike, jim)
corolla = Car.new("Toyota", "Corolla", "clunker", steve, jim)
ferrari = Car.new("Ferrari", "LaFerrari", "exotic", mike, jamie)
chevelle = Car.new("Chevy", "Chevelle", "antique", joe, ross)

#carowner tests
puts CarOwner.all == [mike, joe, steve]
puts mike.my_cars == [civic, ferrari]
puts mike.my_mechanics == [jim, jamie]
puts CarOwner.average_cars_per_owner == 1.33

#car tests
puts Car.all == [civic, corolla, ferrari, chevelle]
puts Car.car_types == ["clunker", "exotic", "antique"]
puts ferrari.mechanic_specialty == [jamie]

#mechanic tests
puts Mechanic.all == [jim, jamie, ross]
puts jim.cars_i_fix == [civic, corolla]
puts jim.my_customers == [mike, steve]
puts jim.my_customers_names == ["Mike", "Steve"]

binding.pry

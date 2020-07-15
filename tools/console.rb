require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
  return "Reload success :D"
end

xavius = CarOwner.new("Xavius")
puts "Owner Xavius was spawned. #{xavius}"
arthas = CarOwner.new("King Arthas")
puts "Owner Arthas was spawned. #{arthas}"
illidan = CarOwner.new("Illidan Stormrage")
puts "Owner Illidan Stormrage was spawned. #{illidan}"
sylvanas = CarOwner.new("Sylvanas Windrunner")
puts "Owner Sylvanas Windrunner was spawned. #{sylvanas}"

xavius.buy_car("Chery", "Amulet", "Deathtrap")
xavius.buy_car("VW", "Golf R", "Hot-Hatch")
arthas.buy_car("Bentley", "Continental", "Luxury")
illidan.buy_car("Chevy", "K5 Blazer", "SUV")
sylvanas.buy_car("BMW", "M5", "Luxury")

binding.pry

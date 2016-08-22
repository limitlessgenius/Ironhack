class CarDealer

	def initialize(inventory)
		@inventory = inventory
	end

	def cars(brand)

		print @inventory[:"#{brand}"]

	end

end

inventory = {:Ford => ["Fiesta", "Mustang"],
		 	 :BMW => ["1", "2"]}

car_dealer = CarDealer.new(inventory)

car_dealer.cars("Ford")

# def print 
# inventory.each do |brand, cars|
# puts "#{brand}": #{cars.join(', ')}"
#end
#con 2 items porque es un hash, y cualquiera de los index
#puede ser el nombre qu esea


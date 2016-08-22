



homes.each do |item|

	puts "Home: #{item.name}, #{item.city}, #{item.capacity}, #{item.price}."
end

lass Car

  def initialize (noise)

  	@noise = noise

  end
  

  def noise

  	puts @noise

  end

end


car_1 = Car.new("Brooom") 

car_2 = Car.new("BROOOM")

puts car_1.noise

puts car_2.noise


class Car

  def initialize (noise)

  	@noise = noise

  end
  

  def noise

  	puts @noise

  end

  def self.speed_control

  	puts "What is the current speed?"

  	speed = gets.chomp

  	if speed > 100

  		puts "You go too fast!"

  	end

  end

end


car_1 = Car.new("Brooom") 

car_2 = Car.new("BROOOM")

puts car_1.noise

puts car_2.noise

result = Car.speed_control 

puts result






#---------------------------------------


class Car

  def self.speed_control

  	puts "What is the current speed?"

  	speed = gets.chomp.to_i

  	if (speed > 100)

  		puts "You go too fast!"

  	end

   
  end

end

result = Car.speed_control 

puts result




#----------------------------------------




class Car

def cities_visited

	@city_set = []

	puts "Introduce city visited:"

	city = gets.chomp

	while (city != "No city")

    @city_set << city

    puts "Introduce another city:"

    city = gets.chomp

    end

end


def cities

	puts "#{@city_set}"

end

end

car_test = Car.new

car_test.cities_visited

car_test.cities


#---------------------


class Car

def cities_visited

	@city_set = []

	puts "Introduce city visited:"

	city = gets.chomp

	while (city != "No city")

    @city_set << city

    puts "Introduce another city:"

    city = gets.chomp

    end

end


def cities

	puts "#{@city_set}"

end

def store 

	IO.write("fichero.txt",@city_set)

end

end

car_test = Car.new

car_test.cities_visited

car_test.store


#-----------------------------


class Car

  def initialize (noise)

  	@noise = noise

  end

  def noise

  	puts @noise

  end

end


class RacingCar<Car

def initialize #you use the method inherited from the p class

	super("BROOOM") #you push up a prefixed argument on it specific

end

end

racing = RacingCar.new

racing.noise






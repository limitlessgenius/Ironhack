class Car

	def initialize (engine)

		@engine = engine

	end

	def noise 

		print "BROOOOM"
		print @engine.noise #interpolar strings!alternativa, in case I want to put it in one line##

	end

end

class Engine

	def noise

		puts "BRUM"

	end

end

class Superengine

	def noise

		puts "ZZZZZUM"

	end

end


car=Car.new(Engine.new)

car.noise



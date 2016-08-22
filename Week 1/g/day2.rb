class Person

	attr_reader :name
	attr_accessor :age

	def initialize (name, age)

		@name = name
		@age = age

	end

end

p = Person.new("José", 20)

puts p.name
puts p.age









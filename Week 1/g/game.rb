class Home
  attr_reader(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
end

homes = [
  Home.new("Nizar's place", "Sevilla", 2, 42),
  Home.new("Fernando's place", "Sevilla", 5, 47),
  Home.new("Josh's place", "Sevilla", 3, 41),
  Home.new("Gonzalo's place", "Málaga", 2, 45),
  Home.new("Ariel's place", "San Juan", 4, 49),
  Home.new("Eulali's place", "Texas", 1, 49),
  Home.new("Paco's place", "New York", 6, 50),
  Home.new("Joshua's place", "San Francisco", 3, 51),
  Home.new("Pilar's place", "Míchigan", 7, 39),
  Home.new("Laura's place", "Boston", 8, 37)
]


homes.each do |item|

	puts "Home: #{item.name}, #{item.city}, #{item.capacity}, #{item.price}."
end
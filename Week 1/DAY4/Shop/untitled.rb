
cart = ShoppingCart.new

cart.additem :apple
cart.additem :banana
cart.additem :banana

cart.show
1 apple: 10$
2 bananas: 40$

cart.cost = 50

prices={
:apples=>10$
:oranges=>5$
:grapes=>15$
:banana=>20$
:watermelon=>50$
}


[[:foo, :bar], [1, 2]].to_h    # => {:foo => :bar, 1 => 2}





lass Shop 

	def initialize 
	@items = {}
	end

	def additem(input)
		@input = input
		@items[@input]= @price
		@hash = @items
		return @hash
	end

	def pricer
		if @input == :apple
			@price = 10
		elsif if @input == :blue
			@price = 5
		elsif if @input == :pastelito
			@price = 15
		end
	end

	def show
		puts @hash
	end
end

gold = Shop.new

gold.additem(:apple)
gold.additem(:blue)
gold.additem(:pastelito)

gold.show
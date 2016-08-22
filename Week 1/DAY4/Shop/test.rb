



def orange
	oranges_box=@list.count(:oranges)
	total_price=oranges_box*@inventory[:oranges]
	discount2=total_price-(total_price/3)
end









array = ["orange", "orange", "melon", "orange","orange"]

number = array.count("orange")


rest = number/2

print rest





require 'pry'
class Shop
	def initialize
		@inventory ={
		:apples=> 10, 
		:oranges=> 5, 
		:grapes=> 15, 
		:banana=> 20, 
		:watermelon=> 50
		}
		@list=[]
		@prices=[]
	end

	def add_item(item)
		item=item
		@list << item
		@prices << @inventory[item]
	end

	def total
		@total = @prices.reduce{|sum,x| sum + x}
	end

	def printer
		@list.each_with_index do |element,index|
		puts"#{index}. #{element}: #{@prices[index]}"
		end
		puts @total
	end
	
end

cart = Shop.new

cart.add_item(:oranges)
cart.add_item(:oranges)
cart.add_item(:grapes)
cart.add_item(:banana)
cart.add_item(:watermelon)
cart.add_item(:oranges)

cart.total





























require'pry'

#PREGUNTAS: por qué no va con @items afuera?
#PREGUNTA: por qué no va sin return? sólo me da 10


class Shop 

	def initialize 
	@items = {}
	@pricev_array=[]
	end

	def additem(input)
		@input = input
			if @input==:apple 
				@price="10$"
				@pricev=10
			elsif @input==:orange
				@price="5$"
				@pricev=5
			elsif @input==:banana
				@price="15$"
				@pricev=15
			elsif @input==:melon
				@price="50$"
				@pricev=50
			end
		@items[@input]= @price
		@pricev_array << @pricev
		@hash = @items
		return @hash
	end

	def printer
		puts @hash
	end

	def cost
		@pricev_array.reduce(0) do |sum,x|
			@total=sum+x
		end
		puts @total
	end
end

gold = Shop.new

gold.additem(:apple)
gold.additem(:orange)
gold.additem(:banana)
gold.additem(:melon)

gold.printer

gold.cost
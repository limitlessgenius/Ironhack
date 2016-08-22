
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
			if @input==:apples
				@price="10$"
				@pricev=10
			elsif @input==:oranges
				@price="5$"
				@pricev=5
			elsif @input==:grapes
				@price="15$"
				@pricev=15
			elsif @input==:banana
				@price="20$"
				@pricev=20
			elsif @input==:melon
				@price="50$"
				@pricev=50
			end
		@items[@input]= @price
		@pricev_array << @pricev
		@hash = @items
	end

	def printer
		puts @hash
	end

	def cost
		@pricev_array.reduce(0) do |sum,x|
			@total=sum + x
			puts @total
		end
	end
end

gold = Shop.new

gold.additem(:apples)
gold.additem(:oranges)
gold.additem(:oranges)
gold.additem(:banana)
gold.additem(:melon)
gold.additem(:melon)

gold.printer

gold.cost

class Words
	def initialize (word1, word2)
		@word1=word1
		@word2=word2
	end

	def spliter 
		@array1=@word1.split("")
		@array2=@word2.split("")
	end

	def first_array
		chain=[]
		array1.each_with_index do |elemento,index|
		array1[index] = array2[index]
		chain << array1.join
		end
		return chain
	end

	def second_array
		chain=[]
		chain2 = chain
		chhain2.each_with_index do |elemento,index|
		chain[index][0] = "c"
		chain2 << chain[index][0] 
		end
	end
end

word=Words.new("cat","dog")

words=word.spliter

words.first_array


require 'pry'
class Shop
	def initialize #executed by default (hard coded)
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
		@item=item
		@list << @item
		@prices << @inventory[@item]
		#por qué se guarda sin símbolo
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

cart.printer



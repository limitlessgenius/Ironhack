



		@list=[]
		@prices=[]
	end

	def add_item(item)
		@item=item
		@list << @item
		@prices << @inventory[@item]
	end

	def total
		@total = @prices.reduce{|sum,x| sum + x}
	end

	def printer
		puts @list
		puts @total
	end
end


@list.each_with_index do |element,index|

	puts "#{index}. #{element}: #{prices[index]}"

	end
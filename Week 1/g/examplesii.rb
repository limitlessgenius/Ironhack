homes.each do|item| 

	puts "#{item.name} in #{item.city}"
	puts "Price $#{item.price} a night."

end

#---------------------------

cities_array = homes.map do |item|

	item.city

end

puts "#{cities_array}"


#---------------------------- puts in explicit array form

cities_array = homes.map do |item|

	item.city

end

puts cities_array


#------------------------------- puts in list format

result = pricing_array.reduce / pricing_array.length


#-------------------------------can you write this way? YES


total=pricing_array.reduce(0){|sum,x| sum+x} #si sum=0, x=42

items= pricing_array.length

puts total/items

#----------------do reduce exercise with each do method#

total_capacities = homes.reduce(0.0) do |sum, hm|
  sum + hm.capacity
end

puts "The average capacity is:"
puts total_capacities / homes.length

#------------------------------------------------------
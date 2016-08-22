

array =[]
i= 1

while i <=3

puts "Give me a name:"
name = gets.chomp
array << name
i+= 1

#array = [name1, name2, name 3] (other);

end

array.each do |name|

	puts "God morning #{name}!"

end





cities = ["miami", "madrid", "barcelona"]

new_city = cities.map do |name|

	name = name.capitalize
	puts name
	
end

# ------------------------ #

cities = ["miami", "madrid", "barcelona"]

cities.map do |name|

	name = name.capitalize
	puts name
	
end

# --------------------------- #



cities = ["miami", "madrid", "barcelona"]

value = cities.reduce do |x, y|

	x.size + y.size
	
end

puts value / cities.length

#---------------


def array_aged(array)
    array.map do |language|
        language.age=language.age + 1
        language
end

end




#------------def array_sort(array)
    array_sorted=array.sort{|a,b| b.age <=> a.age}
end 

#--------

def deleterarray(array)

	
	array_of_languages.delete_if do |word|

		word == "Java"

	end

end
# ------------------------------------














sorted_array = array_sort(array_of_languages)

sorted_array.shuffle

array_printer(sorted_array)
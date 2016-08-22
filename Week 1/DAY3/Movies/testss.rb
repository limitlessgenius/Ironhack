
require "imdb"

def titles (input)

	title_array=[]

	input.each do |item|

		film = Imdb::Search.new(item)

		title_array << film.movies[0].title

	end
	return title_array #porque evalúa la última línea,
	#especificar lo que quieres devolver!!!!!!!!!!!!!

end

def ratings(input)

	rating_array=[]

	input.each do |item|

		film = Imdb::Search.new(item)

		rating_array << film.movies[0].rating

		end
		return rating_array #return lo que hace es dar un valor!#hace que la función que comandas, lo equivale al valor#que tú quieres.
end

films = IO.readlines("films.txt")

puts titles(films)

#luego el puts es absolutamente específico

puts ratings(films)






#puts ratings(films)



#	puts film.movies[0].rating


require "imdb"

def titles (input)

	title_array=[]

	input.each do |item|

		film = Imdb::Search.new(item)

		title_array << film.movies[0].title

	end
	return title_array

end

def ratings(input)

	rating_array=[]

	input.each do |item|

		film = Imdb::Search.new(item)

		rating_array << film.movies[0].rating

		end
		return rating_array
end

films = IO.readlines("films.txt")

#puts titles(films)

#puts ratings(films)


ratings = ratings(films)

print ratings






















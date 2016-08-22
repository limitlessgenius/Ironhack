
class Line

def line

puts "What is the username?"
username = gets.chomp

puts "What is the password?"
password = gets.chomp

if username == "HACKER" && password == "WIN"

	puts "Write some text:"
	text = gets.chomp

	else puts "WRONG password"

	end

	words_array = text.split(" ")

	number = words_array.size

	print number

end

end

command_line = Line.new 

command_line.line

#------------------------------------------------------------

class Asker 

	attr_reader :username, :password #so that they are
	#available outside the class function

	def asker

	puts "What is the username?"
	@username = gets.chomp #arroba necessary para que
	#se guarde en el atributo! en lila

	puts "What is the password?"
	@password = gets.chomp

	end

end

class Filter 

	attr_reader :text, :words_array, :number

	def filter

		if @username == "HACKER" && @password == "WIN"

		puts "Write some text:"
		@text = gets.chomp

		else puts "WRONG password"

		end

		return @text

	end

end


class Result

	def resulter

	@words_array = @text.split(" ")

	@number = words_array.size

	print @number

	end

end

command_line = Asker.new

command_line.asker

filter_command = Filter.new

filter_command.filter

result = Result.new

result.resulter



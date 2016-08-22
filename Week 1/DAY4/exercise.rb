class Line
	attr_reader :answer, :text
	def line
	puts "What is the username?"
	username = gets.chomp
	puts "What is the password?"
	password = gets.chomp
		if username == "HACKER" && password == "WIN"
		puts "Write some text:"
		@text = gets.chomp
		else puts "WRONG password"
		end
	end

	def options
		puts "What do you want to do?" 
		@answer = gets.chomp
		if @answer == "Count words"
			Countwords.new.calc
		elsif @answer == "Count letters"
			Countletters.new.calc
		elsif @answer == "Make reverse"
			Reversetext.new.calc
		elsif @answer == "Make uppercase"
			Uppercase.new.calc
		elsif @answer == "Make lowercase"
			Lowercase.new.calc
		end
	end
end

command_line = Line.new 

command_line.line.

class Countwords
	def calc
		words_array = @text.split(" ")
		number = words_array.size
		print number
	end
end

class Countletters
	def calc
		letters_array = @text.split("")
		number = letters_array.size
		print number
	end
end

class Uppercase
	def calc
		@text.uppercase
	end
end

class Lowercase
	def calc
		@text.lowercase
	end
end
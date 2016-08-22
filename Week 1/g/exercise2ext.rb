class Blog

	def initialize()

	@post = []

	end

	def add_post (post)

		@post << post

	end

	def publish

		sorted.each do |item|

			if item.sponsor == "S"

			puts item.title

			puts "*****#{item.date}*****"

			puts item.text

			else

			puts item.title

			puts item.date

			puts item.text

			end

		end

	end

	
	def sorted

	sorted = @post.sort {|a,b| a.date<=>b.date}

	end

end

class Post

	attr_reader :title, :date, :text, :sponsor

	def initialize (title, date, text, sponsor) #dissapears

		@title #available for all the class = title #dissapears
		#so you equalize it to wathever you want. 
		@date = date

        @text = text

        @sponsor = sponsor

	end

end

blog = Blog.new

blog.add_post Post.new("HOLA","1","YES", "NS")
blog.add_post Post.new("UNO","3","TRES", "S")
blog.add_post Post.new("YESTERDAY","2","DONE", "NS")

blog.sorted

blog.publish
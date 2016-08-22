class Blog

	def initialize()

	@post = []

	end

	def add_post (post)

		@post << post

	end

	def publish_front_page

		@post.each do |item|

			puts item.title

			puts item.date

			puts item.text

		end

	end

end

class Post

	attr_reader :title, :date, :text

	def initialize (title, date, text)

		@title = title

		@date = date

        @text = text

	end

end

blog = Blog.new

blog.add_post Post.new("HOLA", "1", "YES")
blog.add_post Post.new("UNO","3","TRES")
blog.add_post Post.new("YESTERDAY","2","DONE")

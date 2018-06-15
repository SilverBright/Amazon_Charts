class Amazon::Books
	attr_accessor :title, :author, :publisher, :rank, :rating

	def self.date
		# puts "Here's a list of books."
		# 	puts <<~DOC
		# 	1. Book 1
		# 	2. Book 2
		# DOC

		book_1 = self.new
		book_1.title = "A Book Title"
		book_1.author = "A Book Author"
		book_1.publisher = "A Publisher Name"
		book_1.rank = "A Book Rank"
		book_1.rating = "A Book Rating"

		[book_1]

	end

end
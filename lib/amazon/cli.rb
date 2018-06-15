# CLI Controller

class Amazon::CLI

	def call
		list_books
		# menu
	end

	def list_books
		puts "Here are some books!"
		puts <<~DOC
			1. Book 1
			2. Book 2
		DOC
	end

	# def menu
	# 	puts "Enter the number of the book you would like to see:"
	# end

end
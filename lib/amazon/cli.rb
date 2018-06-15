# # CLI Controller

# require_relative './amazon_charts'

class AmazonCharts::CLI

	def start
		puts "Welcome to Amazon Charts: Most Sold Books of the Week app!"
		puts "Which books whould you like to see?"

	end


end


# Book.all.each do |book|
# 	book_details = [
# 		"Title",
# 		"Author",
# 		"Publisher"
# 	]
# 	puts " "
# 	puts "-----------------------------------"
# 	book.instance_variables.each_with_index do |var, index|
# 		break if index == 20
# 		puts "#{book_details[index]}: #{book.instance_variable_get(var)}"
# 	end
# 	puts "-----------------------------------"
# 	puts " "
# 	sleep(0.5)
# end




































# class Amazon::CLI

# 	def call
# 		list_books
# 		menu
# 		goodbye
# 	end

# 	def list_books
# 		puts "Here are some books."
# 		@books = Amazon::Book.scrape_data
# 		@books.each.with_index(1) do |book, i|
# 			puts "#{i}. #{book}"
# 		end
# 	end

# 	def menu
# 			input = nil
# 		while input != "exit"
# 			puts "Please select the number for the book you'd like to know more about, or type exit:"
# 			input = gets.strip.downcase

# 			if input_to_i > 0
# 				# puts @books[input.to_i-1]
# 			a_book = @books[input.to_i-1]
# 			puts "#{a_book}"
# 			elsif input == "list"
# 				list_books
# 			# case input
# 			# when "1"
# 			# 	puts "More details on book 1"
# 			# when "2" 
# 			# 	puts "More details on book 2"
# 			# when "list"
# 			# 	list_books
# 			else
# 				puts "Oops! Please select the number for the game you'd like to know more about, or type 'list' or 'exit'."
# 			end
# 		end
# 	end

# 	def goodbye
# 		puts "Thanks for stopping by! Please visit again soon!!"
# 	end

# end
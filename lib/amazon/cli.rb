# # CLI Controller

# require_relative './amazon_charts'

class AmazonCharts::CLI

	def call 
		greeting
		menu
		list_june_10
		list_june_03
	end

	def greeting
		puts "Welcome to Amazon Charts app!"
	end

	def menu
		input = nil
		while input != "exit"
			puts "Please select which week you'd like to see the top 20 books in fiction sold."
				input = gets.strip.downcase
				if input.to_i == 1
					list_june_10
				elsif input.to_i == 2
					list_june_03
				elsif input.to_i > 2
				puts "OOPS!"
				else
					puts "Thanks for stopping by!"
					exit
			end
		end
	end

	def list_june_10
		puts "Here are the top 20 Fiction books sold for: #{AmazonCharts::Scraper.get_date_june_10}!"
			AmazonCharts::Scraper.week_of_June_10_2018
			AmazonCharts::Book.all.each do |book|
				book_details = [
					"Title",
					"Author",
					"Publisher"
				]
			# sleep(0.1)
				puts "---------------------------------------------------"
				book.instance_variables.each_with_index do |var, index|
				puts "#{book_details[index]}: #{book.instance_variable_get(var)}"
			end
				puts "---------------------------------------------------"
			end
		end

	def list_june_03
		puts "Here are the top 20 Fiction books sold for: #{AmazonCharts::Scraper.get_date_june_3}!"
			AmazonCharts::Scraper.week_of_June_3_2018
			AmazonCharts::Book.all.each do |book|
				book_details = [
					"Title",
					"Author",
					"Publisher"
				]
			# sleep(0.1)
				puts "---------------------------------------------------"
				book.instance_variables.each_with_index do |var, index|
				puts "#{book_details[index]}: #{book.instance_variable_get(var)}"
			end
				puts "---------------------------------------------------"
			end
		end


	end



		

# 		def print_details(book, number, details)
# 			book.instance_variables.each_with_index do |var, index|
# 				if index < number
# 					puts "#{details[index]}: {book.instance_variable_get(var)}"
# 				end
# 			end
# 		end

#  		def menu
#  			puts "Which books whould you like to see?"
#  			puts "Please choose a number"
# 			input = gets.strip.to_i 
# 			if input == 0 || input > 20 || input = nil
# 				menu
# 			end
# 			print_details(@books[input - 1], 3, FULL_DETAILS)
# 			list_books
# 			menu
#  		end
# end

# 	def goodbye
# 		puts "Thanks for stopping by! Please visit again soon!!"
# 	end

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
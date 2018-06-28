class AmazonCharts::CLI

	def call 
		greeting
		menu
	end

	def greeting
		puts <<~DOC

		Welcome to the Amazon Charts App!
		Here are the top selling books for: 
		*** #{AmazonCharts::Scraper.date} ***
		DOC
	end

	def menu
		input = nil 
		while input != "exit"
			puts <<~DOC
			Please select [1] to see the top 20 books sold in fiction.
			Select [2] to see the top 20 books sold in non-fiction. 			
			Or, type "exit" to exit the program.
			DOC
				input = gets.strip.downcase
				if input.to_i == 1
					fiction_books
				elsif input.to_i == 2
					non_fiction_books	
				elsif input != 1 && input != 2 && input != "exit"
					puts "OOPS!"
					menu
				else input == "exit"
					goodbye
			end
		end
	end

	def fiction_books
		AmazonCharts::Scraper.fiction 
		list_books("Fiction")
	end

	def non_fiction_books
		AmazonCharts::Scraper.non_fiction
		list_books("Non-fiction")
	end

	def goodbye
		puts "Thanks for stopping by!"
		exit
	end

	def list_books(type)
		AmazonCharts::Book.all.select {|book| book.type == type}.each do |book|
			book_details = [
				"Rank",
				"Title", 
				"Author", 
				"Publisher",
				"Type"
				]

				puts "---------------------------------------------------"
				book.instance_variables.each_with_index do |var, index| 
				puts "#{book_details[index]}: #{book.instance_variable_get(var)}"
			end
			puts "---------------------------------------------------"
		end
	end
end

require 'pry'
# Book Command Center
class AmazonCharts::CLI

	def call 
		#scrape and make books with date
		greeting
		menu
		fiction_books
		non_fiction_books
		goodbye
	end

	def greeting
		puts " "
		puts "Welcome to Amazon Charts app!"
		puts " "
	end

	def menu
		input = nil #define input method or program breaks
		while input != "exit"
			puts <<~DOC
			Please make a selection.
			For #{AmazonCharts::Scraper.date}:
			Select [1] to see the top 20 books sold in fiction.
			Select [2] to see the top 20 books sold in non-fiction.
			Or, type "exit" to exit the program.
			DOC
				input = gets.strip.downcase
				if input.to_i == 1
					fiction_books	
					AmazonCharts::Book.destroy_all
				elsif input.to_i == 2
					non_fiction_books	
					AmazonCharts::Book.destroy_all
				elsif input != 1 && input != 2 && input != "exit"
					puts "OOPS!"
					menu
				else input == "exit"
					goodbye
			end
		
		end

	end

	def fiction_books
			AmazonCharts::Scraper.fiction  #data from the book scraper
			AmazonCharts::Book.all.each do |book| #iterate through data from the book factory
				book_details = [
					"Rank",
					"Title", 
					"Author", 
					"Publisher"
				]
	
				puts "---------------------------------------------------"
				book.instance_variables.each_with_index do |var, index| 
				puts "#{book_details[index]}: #{book.instance_variable_get(var)}"
				#puts "Rank                	:  1
				#puts "Title                :  The President Is Missing
				#puts "Author               :  Bill Clinton & James Patterson
				#puts "Publisher            :  Little, Brown and Company
			end
				puts "---------------------------------------------------"
				#book (the book object) =>  @author="Author Name", @title="Title Name", etc...
				#book_details => "Rank", "Title", "Author", "Publisher"
				#book.instance_variables =>[:@rank, :@title, :@author, :@publisher]
				#binding.pry
			end
		end

	def non_fiction_books
			AmazonCharts::Scraper.non_fiction
			AmazonCharts::Book.all.each do |book|
				book_details = [
					"Rank",
					"Title",
					"Author",
					"Publisher"
				]

				puts "---------------------------------------------------"
				book.instance_variables.each_with_index do |var, index|
				puts "#{book_details[index]}: #{book.instance_variable_get(var)}"
			end
				puts "---------------------------------------------------"
			end
		end

		def goodbye
			puts "Thanks for stopping by!"
			exit
		end

	end

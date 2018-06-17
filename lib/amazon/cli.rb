# # CLI Controller
require 'pry'

class AmazonCharts::CLI

	def call 
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
		input = nil
		while input != "exit"
			puts <<~DOC
			Please make a selection:
			For #{AmazonCharts::Scraper.date}:
			1. Top 20 Books Sold in Fiction, starting with the top seller
			2. Top 20 Books Sold in Non-Fiction, starting with the top seller
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
			AmazonCharts::Book.all.each do |book|
				book_details = [
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

	def non_fiction_books
			AmazonCharts::Scraper.non_fiction
			AmazonCharts::Book.all.each do |book|
				book_details = [
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

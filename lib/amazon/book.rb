# require 'pry'
# require "amazon_charts"

class AmazonCharts::Book
	attr_accessor :title, :author, :publisher

	@@all = []

	def initialize(hash)
		hash.each do |key, value|
			self.send("#{key}=", value)
		end
		@@all << self
	end

	# def self.save
	# 	@@all << unless 
	# 	end
	# end

	def self.all
		@@all
	end

end


# class Scraper

# 	def self.scrape_data
# 		doc = Nokogiri::HTML(open("https://www.amazon.com/charts/2018-06-10/mostsold/fiction/"))
# 			doc.css(".kc-rank-card-metadata").each do |book|
# 				# Book.new({
# 			title: book.css(".kc-rank-card-title").text.gsub( /\s+/, " " ).strip,
# 			author: book.css(".kc-rank-card-author").text.gsub("\n", "").strip.gsub("by","").strip,
# 			publisher: book.css(".kc-rank-card-publisher").text.gsub("\n", "").strip.gsub("PUBLISHER:", "").strip.gsub("by","")
# 			# })
# 			binding.pry

# 		end
# 	end

# end

# 			# Amazon::Scraper.scrape_data


		
# 			# doc.search(".kc-rank-card-title").each do |titles|
# 			# title = titles.text.gsub( /\s+/, " " ).strip 
# 			# end

# 			# 	doc.search(".kc-rank-card-author").each do |authors|
# 			# 	author = authors.text.gsub("\n", "").strip.gsub("by","").strip
# 			# 	end

# 			# 	doc.search(".kc-rank-card-publisher").each do |publishers|
# 			# 	publisher = publishers.text.gsub("\n", "").strip.gsub("PUBLISHER:", "").strip.gsub("by","")
# 			# 	end

# 			# 	doc.search(".kc-rank-card-rank").each do |rankings|
# 			# 	rank = rankings.text.strip
# 			# 	end

# 			# 	doc.search(".numeric-star-data").each do |ratings|
# 			# 	rating = ratings.text.gsub("\n", "").strip
# 			# 	end
# 			# end



# 		# puts "Here's a list of books."
# 		# 	puts <<~DOC
# 		# 	1. Book 1
# 		# 	2. Book 2
# 		# DOC

# 		# book_1 = self.new
# 		# book_1.title = "A Book Title"
# 		# book_1.author = "A Book Author"
# 		# book_1.publisher = "A Publisher Name"
# 		# book_1.rank = "A Book Rank"
# 		# book_1.rating = "A Book Rating"

# 		# [book_1]


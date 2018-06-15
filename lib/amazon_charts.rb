module AmazonCharts

end


require "Amazon/version"
require "Amazon/book"
require "Amazon/cli"
require "Amazon/scraper"


require "nokogiri"
require "open-uri"
require "pry"
require "rake"




# class AmazonCharts::Book
# 	attr_accessor :title, :author, :publisher, :rank, :rating

# 	@@all = []

# 	def initialize(hash)
# 		hash.each do |key, value|
# 			self.send("#{key}=", value)
# 		end
# 		@@all << self
# 	end

# 	def self.all
# 		@@all
# 	end

# end

# class AmazonCharts::Scraper

# 	def self.scrape_data
# 		doc = Nokogiri::HTML(open("https://www.amazon.com/charts/2018-06-10/mostsold/fiction/"))
# 			doc.css(".kc-rank-card-metadata").each do |book|
# 				 Book.new({
# 			title: book.css(".kc-rank-card-title").text.gsub( /\s+/, " " ).strip,
# 			author: book.css(".kc-rank-card-author").text.gsub("\n", "").strip.gsub("by","").strip,
# 			publisher: book.css(".kc-rank-card-publisher").text.gsub("\n", "").strip.gsub("PUBLISHER:", "").strip.gsub("by","")
# 			 })
# 		end
# 	end

# end

# Scraper.scrape_data

# bin/amazon_charts

# class Scraper

# 	def.scrape_data
# 		doc = Nokogiri::HTML(open("https://www.amazon.com/charts/2018-06-10/mostsold/fiction/"))
		
# 			doc.search(".kc-rank-card-title").each do |titles|
# 			title = titles.text.gsub( /\s+/, " " ).strip 
# 			end

# 			doc.search(".kc-rank-card-author").each do |authors|
# 			author = authors.text.gsub("\n", "").strip.gsub("by","").strip
# 			end

# 			doc.search(".kc-rank-card-publisher").each do |publishers|
# 			publisher = publishers.text.gsub("\n", "").strip.gsub("PUBLISHER:", "").strip.gsub("by","")
# 			end

# 			doc.search(".kc-rank-card-rank").each do |rankings|
# 			rank = rankings.text.strip
# 			end
			
# 			doc.search(".numeric-star-data").each do |ratings|
# 			rating = ratings.text.gsub("\n", "").strip
# 			end
# 		end

# 	end
















	# def self.scrape_data
	# 	doc = Nokogiri::HTML(open("https://www.amazon.com/charts/2018-06-10/mostsold/fiction/"))
		
	# 			doc.search(".kc-rank-card-title").each do |titles|
	# 			title = titles.text.gsub( /\s+/, " " ).strip 
	# 			end

	# 			doc.search(".kc-rank-card-author").each do |authors|
	# 			author = authors.text.gsub("\n", "").strip.gsub("by","").strip
	# 			end

	# 			doc.search(".kc-rank-card-publisher").each do |publishers|
	# 			publisher = publishers.text.gsub("\n", "").strip.gsub("PUBLISHER:", "").strip.gsub("by","")
	# 			end

	# 			doc.search(".kc-rank-card-rank").each do |rankings|
	# 			rank = rankings.text.strip
	# 			end

	# 			doc.search(".numeric-star-data").each do |ratings|
	# 			rating = ratings.text.gsub("\n", "").strip
	# 			end
	# 		end

	# end


	# week_of_list = doc.search(".kc-title-text").text.split.join(" ")

	# def book(title:, author:, publisher:, ranking:, rating:)
	# 	Book.new({
	# 		title:
	# 		author:

	# 		)}
	# 	end
	# end



 
# Scraper.scrape_data



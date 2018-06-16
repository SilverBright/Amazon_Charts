require 'open-uri'
require 'Nokogiri'
require 'pry'

class AmazonCharts::Scraper

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# WORKING CODE

	def self.scrape_this_week
		doc = Nokogiri::HTML(open("https://www.amazon.com/charts/2018-06-10/mostsold/fiction/"))
			doc.css(".kc-rank-card-metadata").each do |book|
				 AmazonCharts::Book.new({
					title: book.css(".kc-rank-card-title").text.gsub( /\s+/, " " ).strip,
					author: book.css(".kc-rank-card-author").text.gsub("\n", "").strip.gsub("by","").strip,
					publisher: book.css(".kc-rank-card-publisher").text.gsub("\n", "").strip.gsub("PUBLISHER:", "").strip.gsub("by","")
			 	})
		end
	end

	def self.this_week_date
		doc = Nokogiri::HTML(open("https://www.amazon.com/charts/2018-06-10/mostsold/fiction/"))
		doc.search(".kc-title-text")
		this_week = doc.search(".kc-title-text").text.split.join(" ")
	end
end

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~`


# 	def self.this_week
# 		self.this_week
# 	end

# 	def self.scrape_books
# 		books = []

# 		books << self.scrape_this_week
# 		books << self.scrape_last_week

# 		books
# 	end

# 	def self.scrape_this_week
# 		doc = Nokogiri::HTML(open("https://www.amazon.com/charts/2018-06-10/mostsold/fiction/"))

# 		books = self.new
# 		book.title = book.css(".kc-rank-card-title").text.gsub( /\s+/, " " ).strip
# 		book.author = book.css(".kc-rank-card-author").text.gsub("\n", "").strip.gsub("by","").strip
# 		book.publisher = book.css(".kc-rank-card-publisher").text.gsub("\n", "").strip.gsub("PUBLISHER:", "").strip.gsub("by","")

# 		book
# 	end

# 	def.self.scrape_last_week
# 				doc = Nokogiri::HTML(open("https://www.amazon.com/charts/2018-06-03/mostsold/fiction/"))

# 		books = self.new
# 		book.title = book.css(".kc-rank-card-title").text.gsub( /\s+/, " " ).strip
# 		book.author = book.css(".kc-rank-card-author").text.gsub("\n", "").strip.gsub("by","").strip
# 		book.publisher = book.css(".kc-rank-card-publisher").text.gsub("\n", "").strip.gsub("PUBLISHER:", "").strip.gsub("by","")

# 		book
# 	end
# end














	# def self.scrape_rank
	# 	doc = Nokogiri::HTML(open("https://www.amazon.com/charts/2018-06-10/mostsold/fiction/"))
	# 		doc.search(".kc-rank-card-rank").each do |rankings|
	# 		ranking = rankings.text.strip  #ranking = "1"
			
	# 		# binding.pry  
	# 	end
	# end


	



# Scraper.this_week
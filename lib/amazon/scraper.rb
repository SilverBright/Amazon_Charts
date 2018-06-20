# Book Data Collector
require 'open-uri'
require 'Nokogiri'
require 'pry'

class AmazonCharts::Scraper

	def self.fiction
		doc = Nokogiri::HTML(open("https://www.amazon.com/charts/2018-06-10/mostsold/fiction/"))
			cards = doc.css(".kc-rank-card")

			cards.each do |book|
				if(!book.attribute("id").value.include?("-mobile"))
					AmazonCharts::Book.new({
						rank: book.css(".kc-rank-card-rank").text.gsub("\n", "").split.join(" "),
						title: book.css(".kc-rank-card-title").text.gsub( /\s+/, " " ).strip,
						author: book.css(".kc-rank-card-author").text.gsub("\n", "").strip.gsub("by","").strip,
						publisher: book.css(".kc-rank-card-publisher").text.gsub("\n", "").strip.gsub("PUBLISHER:", "").strip.gsub("by","")
				 	})
				end
		end

		cards = doc.css(".kc-horizontal-rank-card")

			cards.each do |book|
				if(!book.attribute("id").value.include?("-mobile"))
					AmazonCharts::Book.new({
						rank: book.css(".kc-rank-card-rank").text.gsub("\n", "").split.join(" "),
						title: book.css(".kc-rank-card-title").text.gsub( /\s+/, " " ).strip,
						author: book.css(".kc-rank-card-author").text.gsub("\n", "").strip.gsub("by","").strip,
						publisher: book.css(".kc-rank-card-publisher").text.gsub("\n", "").strip.gsub("PUBLISHER:", "").strip.gsub("by","")
				 	})
				end
		end
	end

	def self.date
		doc = Nokogiri::HTML(open("https://www.amazon.com/charts/2018-06-10/mostsold/fiction/"))
		doc.search(".kc-title-text")
		this_week = doc.search(".kc-title-text").text.split.join(" ")
	end

	def self.non_fiction
		doc = Nokogiri::HTML(open("https://www.amazon.com/charts/2018-06-10/mostsold/nonfiction/"))
			cards = doc.css(".kc-rank-card")

			cards.each do |book|
				if(!book.attribute("id").value.include?("-mobile"))
					AmazonCharts::Book.new({
						rank: book.css(".kc-rank-card-rank").text.gsub("\n", "").split.join(" "),
						title: book.css(".kc-rank-card-title").text.gsub( /\s+/, " " ).strip,
						author: book.css(".kc-rank-card-author").text.gsub("\n", "").strip.gsub("by","").strip,
						publisher: book.css(".kc-rank-card-publisher").text.gsub("\n", "").strip.gsub("PUBLISHER:", "").strip.gsub("by","")
				 	})
				end
		end

		cards = doc.css(".kc-horizontal-rank-card")

			cards.each do |book|
				if(!book.attribute("id").value.include?("-mobile"))
					AmazonCharts::Book.new({
						rank: book.css(".kc-rank-card-rank").text.gsub("\n", "").split.join(" "),
						title: book.css(".kc-rank-card-title").text.gsub( /\s+/, " " ).strip,
						author: book.css(".kc-rank-card-author").text.gsub("\n", "").strip.gsub("by","").strip,
						publisher: book.css(".kc-rank-card-publisher").text.gsub("\n", "").strip.gsub("PUBLISHER:", "").strip.gsub("by","")
				 	})
				end
			end
		end
		
end

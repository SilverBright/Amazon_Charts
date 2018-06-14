# require "Amazon/version"
require "nokogiri"
require "open-uri"
require "pry"
require "rake"

class Book
	attr_accessor :author, :release_date, :title, :price, :rating

	@@all = []

	def initialize
		@@all << self
	end

end

class Scraper

	def self.scrape_data
		doc = Nokogiri::HTML(open("https://www.amazon.com/charts/2018-06-10/mostsold/fiction/"))

		doc.search(".kc-rank-card-title").each do |titles|
		title = titles.text.gsub( /\s+/, " " ).strip 
		end

		doc.search(".kc-rank-card-author").each do |authors|
		author = authors.text.gsub("\n", "").strip.gsub("by","").strip
		end

		doc.search(".kc-rank-card-publisher").each do |publishers|
		publisher = publishers.text.gsub("\n", "").strip.gsub("PUBLISHER:", "").strip.gsub("by","")
		end
	end

	binding.pry 

end
 
# Scraper.scrape_data


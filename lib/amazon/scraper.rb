class AmazonCharts::Scraper

	def self.scrape_data
		doc = Nokogiri::HTML(open("https://www.amazon.com/charts/2018-06-10/mostsold/fiction/"))
			doc.css(".kc-rank-card-metadata").each do |book|
				 Book.new({
			title: book.css(".kc-rank-card-title").text.gsub( /\s+/, " " ).strip,
			author: book.css(".kc-rank-card-author").text.gsub("\n", "").strip.gsub("by","").strip,
			publisher: book.css(".kc-rank-card-publisher").text.gsub("\n", "").strip.gsub("PUBLISHER:", "").strip.gsub("by","")
			 })
		end
	end

end

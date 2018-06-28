class AmazonCharts::Scraper

	def self.date
		date = Nokogiri::HTML(open("https://www.amazon.com/charts"))
		date.css(".kc-title-text").text.split.join(" ")
	end

	def self.fiction
		doc = Nokogiri::HTML(open("https://www.amazon.com/charts/mostsold/fiction/"))
		cards = doc.css(".kc-rank-card")
		self.make_cards(cards, "Fiction")	
		cards = doc.css(".kc-horizontal-rank-card")
		self.make_cards(cards, "Fiction")	
	end

	def self.non_fiction
		doc = Nokogiri::HTML(open("https://www.amazon.com/charts/mostsold/nonfiction/"))
		cards = doc.css(".kc-rank-card")
		self.make_cards(cards, "Non-fiction")				
		cards = doc.css(".kc-horizontal-rank-card")
		self.make_cards(cards, "Non-fiction")		
	end

	def self.make_cards(cards, type)
		cards.each do |book|
			if(!book.attribute("id").value.include?("-mobile"))
				AmazonCharts::Book.new({
					rank: book.css(".kc-rank-card-rank").text.gsub("\n", "").split.join(" "),
					title: book.css(".kc-rank-card-title").text.gsub( /\s+/, " " ).strip,
					author: book.css(".kc-rank-card-author").text.gsub("\n", "").strip.gsub("by","").strip,
					publisher: book.css(".kc-rank-card-publisher").text.gsub("\n", "").strip.gsub("PUBLISHER:", "").strip.gsub("by",""),
					type: type
					})
			end
		end
	end	
end
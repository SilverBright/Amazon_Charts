class AmazonCharts::Book
	attr_accessor :title, :author, :publisher

	@@all = []

	def initialize(hash)
		hash.each do |key, value|
			self.send("#{key}=", value)
		end
		@@all << self
	end

	def self.all
		@@all
	end

end


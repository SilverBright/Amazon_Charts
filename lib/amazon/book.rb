class AmazonCharts::Book
	attr_accessor :rank, :title, :author, :publisher, :type

	@@all = []

	def initialize (hash) 
		hash.each do |key, value|
			self.send("#{key}=", value)  
		end
		@@all << self	
	end

	def self.all 
		@@all
	end

	def self.destroy_all 
		self.all.clear
	end
end

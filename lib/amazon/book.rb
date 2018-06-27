# Book Factory
require 'pry'

class AmazonCharts::Book
	attr_accessor :rank, :title, :author, :publisher

	@@all = []

	#Ruby Metaprogramming
	def initialize(hash) #value
		hash.each do |key, value|
			self.send("#{key}=", value)  # i.e. send to myself (the instance) the key of title, and the value of "Title of a book"
		end
		@@all << self	#push these into the @@all bucket
	end

	def self.all #assign @@all to self
		@@all
	end

	def self.destroy_all #this method dumps the data each time the program is run
		self.all.clear
	end

end



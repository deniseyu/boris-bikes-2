require_relative 'bike_container.rb'

class Garage

	include BikeContainer

	attr_reader :bikes

	def initialize
		@bikes = []
	end

	def dock(bike)
		bike.fix!
		@bikes << bike
	end

	def release(bike)
		@bikes.pop
	end

end
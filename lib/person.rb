class Person

	attr_accessor :has_bike

	def initialize
		@has_bike = false
	end

	def rent(bike, station)
		if station.available_bikes == []
			raise "No working bikes available!"
		else
			@has_bike = true
		end
	end

	def return(bike, station)
		raise "No bike to return" if @has_bike == false
		station.bikes << bike
		@has_bike = false
	end

	def crash(bike)
		bike.break!
	end

end
class Garage

	def initialize
		@bikes = []
	end

	def dock(bike)
		@bikes << bike 
		bike.fix!
	end

end 
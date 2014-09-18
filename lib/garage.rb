class Garage

	attr_reader :bikes

	# def bikes
	# 	@bikes
	# end

	def initialize
		@bikes = []
	end

	def dock(bike)
		@bikes << bike 
		bike.fix!
	end

	def release(bike)
		@bikes.pop
	end

end 
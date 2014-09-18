class Garage

	attr_reader :bikes

	# def bikes
	# 	@bikes
	# end

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
class BikeContainer 

	def bikes
		@bikes ||= []
	end

	def dock(bike)
		bikes << bike 
	end 

	def bike_count
		bikes.count 
	end 

	def release(bike)
		bikes.pop
	end

end
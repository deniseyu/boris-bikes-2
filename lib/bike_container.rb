class BikeContainer 

	DEFAULT_CAPACITY = 20 

	attr_accessor :capacity

	def bikes
		@bikes ||= []
	end

	def dock(bike)
		raise "No more room for bikes" if full?
		bikes << bike 
	end 

	def capacity
		@capacity ||= 20
	end

	def full?
		bike_count == capacity
	end

	def empty?
		bike_count == 0 
	end

	def bike_count
		bikes.count 
	end 

	def release(bike)
		raise "No bikes here" if empty?
		bikes.pop
	end	



end
class DockingStation

	def bikes
		@bikes ||= []
	end

	def dock(bike)
		bikes << bike 
	end

	def release(bike)
		bikes.pop
	end

end
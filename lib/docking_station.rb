class DockingStation

	def bikes
		@bikes ||= []
	end

	def dock(bike)
		bikes << bike 
	end

end
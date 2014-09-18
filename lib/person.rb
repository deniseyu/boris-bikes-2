class Person

	def has_bike?
		@bikes != nil 
	end

	def rent(bike)
		if bike.broken?
			raise "This bike is broken!"
		else
			@bikes << station.release(bike)
		end
	end

	def return(bike)
		station.bikes << @bikes
		@bikes = nil
	end 

	def crash(bike)
		bike.break!
	end

end 
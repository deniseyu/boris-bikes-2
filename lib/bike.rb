class Bike 

	def break!
		@broken = true 
		self
	end

	def fix!
		@broken = false
		self
	end

	def broken?
		@broken
	end

end 
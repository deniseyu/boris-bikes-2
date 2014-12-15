require 'bike_container.rb'

class DockingStation

  include BikeContainer

	def initialize
		@capacity = 20    # Is this a legal way to initialize the capacity?
	end


end
require './lib/docking_station'
require './lib/spec_helper.rb'

describe DockingStation do 

	let (:bike) { double :bike }

	it "should dock bikes" do 
		station = DockingStation.new
		# bike = double :bike 
		# expect{ station.dock(:bike)}.to change{station.bikes}.to eq ([:bike])

		station.dock(bike)
		expect(station.bikes).to eq [bike]	


	end 




end

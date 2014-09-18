require './lib/docking_station'
require './lib/spec_helper.rb'

describe DockingStation do 

	let (:bike) { double :bike }
	let (:broken_bike) { double :broken_bike }
	let (:station) { DockingStation.new}

	it "should dock bikes" do 
		# expect{ station.dock(:bike)}.to change{station.bikes}.to eq ([:bike])
		station.dock(bike)
		expect(station.bikes).to eq [bike] 
	end 

	it "should release bikes" do 
		station.dock(bike)
		station.release(bike)
		expect(station.bikes).to eq []
	end 

end

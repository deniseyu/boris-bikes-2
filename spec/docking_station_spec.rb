require './lib/docking_station'
require './lib/bike_container'
require './lib/spec_helper.rb'

describe DockingStation do

	let (:bike) { double :bike }
	let (:broken_bike) { double :broken_bike }
	let (:station) { DockingStation.new}

	it "should dock a bike" do
		station.dock(bike)
		expect(station.bikes).to eq [bike]
	end

	it "should release a bike" do
		station.dock(bike)
		station.release(bike)
		expect(station.bikes).to eq []
	end




end

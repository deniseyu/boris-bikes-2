require './lib/garage'

describe Garage do

let (:bike) { double :bike, :broken? => true}
let (:garage) { Garage.new }

	before do
		allow(bike).to receive(:fix!)
	end

	it "can receive bikes" do
		garage.dock(bike)
		expect(garage.bikes).to eq [bike]
	end

	it "can fix a broken bike" do
		garage.dock(bike)
		allow(bike).to receive(:broken?).and_return false
		expect(bike).to_not be_broken
	end

	it "can release a fixed bike" do
		garage.dock(bike)
		garage.release(bike)
		expect(garage.bikes).to eq []
	end

end
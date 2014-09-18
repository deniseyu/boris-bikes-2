require './lib/garage'

describe Garage do 

let (:bike) { double :bike, :fix! => true } # Here we are telling rspec that fix! method doesn't really exist but keep going
let (:garage) { Garage.new }

	it "can receive bikes" do 
		garage.dock(bike)
		expect(garage.bikes).to include bike
	end 

	it "can fix a broken bike" do 
		expect(bike).to receive(:fix!)
		garage.dock(bike)
	end

	it "can release a fixed bike" do 
		garage.dock(bike)
		garage.release(bike)
		expect(garage.bikes).to be []
	end

end


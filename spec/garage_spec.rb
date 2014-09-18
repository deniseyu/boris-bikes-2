require './lib/garage'

describe Garage do 

let (:bike) { double :bike, :fix! => true } # 
let (:garage) { Garage.new }

	it "can receive broken bikes" do 
		# allow(bike).to receive(:fix!)
		expect(garage.dock(bike))
	end 

	it "can fix a broken bike" do 
		expect(bike).to receive(:fix!)
		garage.dock(bike)
	end


end


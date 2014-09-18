require './lib/bike'

describe Bike do

	it "can be broken" do 
		bike = Bike.new
		bike.break!
		expect(bike.broken?).to eq true
	end

	it "can be fixed" do 
		bike = Bike.new
		bike.fix!
		expect(bike.broken?).to eq false
	end


end
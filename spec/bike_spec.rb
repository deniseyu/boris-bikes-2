require './lib/bike'

describe Bike do

	it "can be broken" do 
		bike = Bike.new
		expect(bike).to receive(:break!)
		bike.break!
	end

	it "can be fixed" do 
		bike = Bike.new
		expect(bike).to receive(:fix!)
		bike.fix!
	end

	it "can run into a tree" do 
		bike = Bike.new
		tree = double :tree
		expect(bike).to receive(:collide_into).and_return(tree)
		bike.collide_into(tree)
	end

end
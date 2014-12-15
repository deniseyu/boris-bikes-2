require './lib/bike_container.rb'

describe BikeContainer do

	class Holder; include BikeContainer; end

	let (:bike) { double :bike }
	let (:broken_bike) { double :broken_bike }
	let (:station) { double :station }
	let (:holder) { Holder.new }

	def fill_holder
		20.times { holder.dock(bike) }
	end

	it "should know that it has docked a working bike" do
		holder.dock(bike)
		expect(holder.bikes).to eq [bike]
	end

	it "should know that it has docked a broken bike" do
		holder.dock(broken_bike)
		expect(holder.bikes).to eq [broken_bike]
	end

	it "should release an available bike" do
		holder.dock(bike)
		holder.release(bike)
		expect(holder.bike_count).to eq 0
	end

	it "should release a broken bike" do
		holder.dock(broken_bike)
		holder.release(broken_bike)
		expect(holder.bike_count).to eq 0
	end

	it "should know when it's empty" do
		expect(holder).to be_empty
	end

	it "should know when it's full" do
		fill_holder
		expect(holder).to be_full
	end

	it "should not dock bikes when it's full" do
		fill_holder
		expect{ holder.dock(bike) }.to raise_error(RuntimeError)
	end

	it "should be empty on initialization" do
		expect(holder.bikes).to eq []
		expect(holder).to be_empty
	end

	it "should not release bikes when it's empty" do
		expect(holder).to be_empty
		expect{ holder.release(bike) }.to raise_error(RuntimeError)
	end

	it "should know what bikes it contains" do
		holder.dock(bike)
		holder.dock(broken_bike)
		expect(holder.bike_count).to eq 2
		expect(holder.bikes).to eq [bike, broken_bike]
	end

	it "should show available bikes" do
		holder.dock(bike)
		expect(holder.bikes).to eq [bike]
	end

	it "should show broken bikes" do
		holder.dock(broken_bike)
		expect(holder.bikes).to eq [broken_bike]
	end


end
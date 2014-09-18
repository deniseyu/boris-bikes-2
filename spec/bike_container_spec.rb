require './lib/bike_container.rb'

describe BikeContainer do 

	let (:bike) { double :bike }
	let (:broken_bike) { double :broken_bike }
	let (:station) { double :station }
	let (:holder) { BikeContainer.new }

	def fill_holder
		20.times { holder.dock(bike) }
	end

	it "should dock available bikes" do 
		holder.dock(bike)
		expect(holder.bikes).to eq [bike]
	end

	it "should dock broken bikes" do 
		holder.dock(broken_bike)
		expect(holder.bikes).to eq [broken_bike]
	end 

	it "should release available bikes" do
		holder.dock(bike)
		expect(holder.bikes).to eq [bike]
		holder.release(bike)
		expect(holder.bikes).to eq []
		expect(holder.bike_count).to eq 0
	end

	it "should release broken bikes" do 
		holder.dock(broken_bike)
		expect(holder.bikes).to eq [broken_bike]
		expect(holder.bike_count).to eq (1)
		holder.release(broken_bike)
		expect(holder.bikes).to eq []
		expect(holder.bike_count).to eq 0
	end

	it "should know when it's full" do 
		expect(holder).to_not be_full 
		fill_holder
		expect(holder).to be_full
	end

	it "should not dock bikes when it's full" do 
		fill_holder
		expect(holder).to be_full
		expect{ holder.dock(bike)}.to raise_error(RuntimeError)
	end

	it "should know when it's empty" do 
		expect(holder.bikes).to eq []
		expect(holder).to be_empty
	end

	it "should not release bikes when it's empty" do 
		expect(holder.bike_count).to eq 0
		expect(holder).to be_empty
		expect{ holder.release(bike)}.to raise_error(RuntimeError)
	end

	it "should know what bikes it contains" do
		holder.dock(bike)
		holder.dock(broken_bike)
		expect(holder.bike_count).to eq 2 # Is there a way to concatenate these two arrays to show both working and broken bikes?
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
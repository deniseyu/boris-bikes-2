require './lib/bike_container.rb'

describe BikeContainer do 

	let (:bike) { double :bike }
	let (:broken_bike) { double :broken_bike }
	let (:station) { double :station }
	let (:holder) { BikeContainer.new }

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
	end

	it "should not dock bikes when it's full" do 
	end

	it "should know when it's empty" do 
	end

	it "should not release bikes when it's empty" do 
	end

	it "should know what bikes it contains" do
	end

	it "should show available bikes" do 
	end

	it "should show broken bikes" do 
	end


end
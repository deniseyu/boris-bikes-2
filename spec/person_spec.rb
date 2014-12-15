require './lib/person'
require './lib/docking_station'
require './lib/bike'

describe Person do

	let (:person) { Person.new }
	let (:bike) { double :bike, :broken? => false }
	let (:station) { double :station, :bikes => [], :available_bikes => [] }

	context 'station contains working bikes' do

		before do
			station.available_bikes << bike
		end

		it "can rent a working bike" do
			expect(person.has_bike).to eq false
			person.rent(bike, station)
			expect(person.has_bike).to eq true
		end


		it "can return a bike" do
			person.rent(bike, station)
			person.return(bike, station)
			expect(person.has_bike).to eq false
		end

		it "can crash a bike" do
			person.rent(bike, station)
			allow(bike).to receive(:break!)
			person.crash(bike)
			expect(person.has_bike).to eq true
		end

	end

	context 'station does not contain working bikes' do

		it "cannot rent a broken bike" do
			broken_bike = double :bike, :broken? => true
			expect(broken_bike).to be_broken
			station.bikes << broken_bike
			expect(station.available_bikes).to eq []
			expect{ person.rent(broken_bike, station) }.to raise_error(RuntimeError)
		end

	end

end
require './lib/person'
# require './lib/docking_station'
# require './lib/bike'

describe Person do 

	let (:person) { Person.new }
	let (:bike) { double :bike }
	let (:broken_bike) { double :broken_bike }
	let (:station) { double :station }

	it "can rent a working bike" do 
		expect(person.has_bike?).to eq false
		person.rent(bike)
		expect(person.has_bike?).to eq true
	end 

	it "can return a bike" do 
		person.rent(bike)
		expect(person.has_bike?).to eq true
		person.return(bike)
		expect(person.has_bike?).to eq false
	end

	it "can crash with a bike" do
		person.rent(bike)
		person.crash(bike)
		expect(person.has_bike?).to eq true
	end
	

end
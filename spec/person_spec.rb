require './lib/person'

describe Person do 

	let (:person) { Person.new }
	let (:bike) { double :bike }

	it "can rent a bike" do 
		person = Person.new
		station = double :station 
		bike = double :bike
	end 


	def release
	end 

end
require './lib/docking_station'

describe DockingStation do

	let(:bike) { Bike.new }
	let(:station) { DockingStation.new(:capacity => 20) }

	def empty_station(station)
		20.times { station.release(Bike.new)}
	end


	it "should allow setting default capacity on initialising" do
		expect(station.capacity).to eq(20)
	end

	# it "should not release a bike when docking station is empty" do
	# 	expect(station).not_to be_empty
	# 	empty_station station
	# 	expect(station).to be_empty
	# end

end
	

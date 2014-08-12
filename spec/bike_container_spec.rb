require './lib/bike_container'

class ContainerHolder; include BikeContainer; end

describe BikeContainer do 

	let(:bike) { Bike.new }
	let(:holder) { ContainerHolder.new }

	it "should accept a bike" do	
		# we expect the holder to have 0 bikes
		expect(holder.bike_count).to eq(0)
		# let's dock a bike into the holder
		holder.dock(bike)
		# now we expect the holder to have 1 bike
		expect(holder.bike_count).to eq(1)
	end

	it "should release a bike" do
		station.dock(bike)
		station.release(bike)
		expect(station.bike_count).to eq(0)
	end

	it "should know when it's full" do 
	 	expect(station).not_to be_full
	 	fill_station station
	 	expect(station).to be_full
	end

	it "should not accept a bike if it's full" do
		fill_station station
		expect(lambda { station.dock(bike)}).to raise_error(RuntimeError)
	end

	it "should provide the list of available bikes" do
		working_bike, broken_bike = Bike.new, Bike.new
		broken_bike.break! # reminder - documentation missing exclamation mark
		station.dock(working_bike)
		station.dock(broken_bike)
		expect(station.available_bikes).to eq([working_bike])
	end
	
end
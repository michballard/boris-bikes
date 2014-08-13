module BikeContainer

	# attr_writer :capacity

	DEFAULT_CAPACITY = 10

	def bikes
		@bikes ||=[]
	end

	def capacity
		@capacity ||= DEFAULT_CAPACITY
	end

	def capacity=(value)
		@capacity = value
	end

	def bike_count
		bikes.count
	end

	def dock(bike)
		raise "nothing to dock" if bike == nil
		raise "this is not a bike" unless bike.is_a? Bike
		raise "Station is full" if full?
		bikes << bike
	end

	def release(bike)
		raise "this is not a bike" unless bike.is_a? Bike
		raise "bike not specified" if bike == nil
		raise "bike not available" if available_bikes.count == 0
		bikes.delete(bike)
	end

	def full?
		bike_count == capacity
	end

	def available_bikes
		bikes.reject {|bike| bike.broken?}
	end

end
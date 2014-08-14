require_relative 'bike_container'
require './lib/garage'

class Van

	include BikeContainer

	def initialize(options = {})
		self.capacity = options.fetch(:capacity, capacity)
	end

	def collect_broken_bikes_from(holder)
		holder.broken_bikes.each do |broken_bike|
			dock(broken_bike)
			holder.release(broken_bike)
		end
	end

	def release_broken_bikes_to(holder)
		broken_bikes.each do |broken_bike|
			holder.dock(broken_bike)
			release(broken_bike)
		end
	end

	def collect_fixed_bikes_from(holder)
		holder.bikes.each do |fixed_bike|
			dock(fixed_bike)
			holder.release(fixed_bike)
		end
	end	

	def release_fixed_bikes_to(holder)
		bikes.each do |fixed_bike|
			holder.dock(fixed_bike)
			release(fixed_bike)
		end
	end

end

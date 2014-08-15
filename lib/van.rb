require_relative 'bike_container'
require './lib/garage'

class Van

	include BikeContainer

	def initialize(options = {})
		self.capacity = options.fetch(:capacity, capacity)
	end

	def collect_broken_bikes_from(holder)
		holder.broken_bikes.each do |broken_bike|
			collect_bike(holder, broken_bike)
		end
	end

	def release_broken_bikes_to(holder)
		broken_bikes.each do |broken_bike|
			release_bike(holder, broken_bike)
		end
	end

	def collect_fixed_bikes_from(holder)
		holder.bikes.each do |fixed_bike|
			collect_bike(holder, fixed_bike)
		end
	end	

	def release_fixed_bikes_to(holder)
		bikes.each do |fixed_bike|
			release_bike(holder, fixed_bike)
		end
	end

private

	def collect_bike(holder, bike)
		dock(bike)
		holder.release(bike)
	end

	def release_bike(holder, bike)
		holder.dock(bike)
		release(bike)
	end

end

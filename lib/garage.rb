require_relative 'bike_container'
require_relative 'bike'

class Garage

	include BikeContainer
	
	def initialize(options = {})
		self.capacity = options.fetch(:capacity, capacity)
	end

	def dock(bike)
		bike.fixed!
		super
	end

end
class DockingStation
  attr_reader :bike_collection

  def initialize
    @bike_collection = []
  end

  def release_bike
    Bike.new
    return Bike.new unless @bike_collection == []
    raise StandardError.new("Sorry, I don't have any bikes!")
  end

  def dock(bike)
    return @bike_collection.push(bike) unless @bike_collection.length >= 20
    fail("Docking Station already at full capacity.")
  end
end

class DockingStation
  attr_reader :bike

  def release_bike
    Bike.new
    if @bike.nil?
      raise StandardError.new("Sorry, I don't have any bikes!")
    else
      Bike.new
    end
  end

  def dock(bike)
    @bike = bike
  end
end

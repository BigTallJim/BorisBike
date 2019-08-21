
class DockingStation
attr_accessor :store
  def initialize
    @store = []
    @store = store
  end

  def release_bike
    Bike.new
  end

  def dock_bike(bike)
    @store << bike
  end



end

class Bike
  def working?
    return true
  end
end

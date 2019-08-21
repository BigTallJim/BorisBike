
class DockingStation
attr_accessor :store
  def initialize
    @store = []
    @store = store
  end

  def release_bike
    if @store.length == 0
      raise
    end
    return Bike.new
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

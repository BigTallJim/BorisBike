
class DockingStation
attr_accessor :store
  def initialize
    @store = []
    @store = store
  end

  def release_bike
    if @store.empty?
      raise "No bikes available"
    else @store.pop
    end
  end

  def dock_bike(bike)
    if @store.length ==2
      p "came in here"
      raise "Docking Station Full"
    else
      @store << bike
    end
  end
end

class Bike
  def working?
    return true
  end
end

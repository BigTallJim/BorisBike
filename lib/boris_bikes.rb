
class DockingStation
attr_accessor :store
  def initialize
    @store = []
    @store = store
  end

  def release_bike
    if is_empty?
      raise "No bikes available"
    end
    @store.pop
  end

  def dock_bike(bike)
    if is_full?
      raise "Docking Station Full"
    end
    @store << bike
  end

  private
  def is_full?
    @store.length == 20 ? true : false
  end

  def is_empty?
    @store.empty? ? true : false
  end
end

class Bike
  def working?
    return true
  end
end

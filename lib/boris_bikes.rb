$DEFAULT_CAPACITY = 20

class DockingStation
attr_accessor :store
  def initialize(station_size=20)
    $DEFAULT_CAPACITY = station_size
    @store = []
  end

  def release_bike
    raise "No bikes available" if is_empty?
    @store.pop
  end

  def dock_bike(bike)
    raise "Docking Station Full" if is_full?
    @store << bike
  end

  private
  def is_full?
    @store.length == $DEFAULT_CAPACITY ? true : false
  end

  def is_empty?
    @store.empty? ? true : false
  end
end

class Bike
  attr_accessor :working
  def initialize
    @working = true
  end
end

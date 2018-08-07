class Bus

  attr_reader :route, :destination
  attr_accessor :passengers

  def initialize(route, destination, passengers)
    @route = route
    @destination = destination
    @passengers = passengers
  end

  def drive
    return "Brum Brum"
  end

  def pick_up(person)
    passengers.push(person)
    return passengers.length
  end

  # def drop_off(person)
  #   passengers.delete(person)
  #   return passengers.length
  # end

  def empty
    @passengers = []
  end

  def pick_up_from_queue(bus_stop)
    for person in bus_stop.queue
      passengers << person
    end
    bus_stop.queue = []

    return passengers.length
  end

end

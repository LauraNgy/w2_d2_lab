require("minitest/autorun")
require("minitest/rg")
require_relative("../bus")
require_relative("../person")
require_relative("../bus_stops")

class BusStopsTest < MiniTest::Test

  def setup

    @person1 = Person.new("Jennifer", 33)
    @person2 = Person.new("Laura", 42)
    @person3 = Person.new("Craig", 16)

    @queue = [@person1, @person2, @person3]

    # @bus1 = Bus.new(22, "Ocean Terminal", [])

    @bus_stop = BusStops.new("Princess Street", @queue)

  end

  def test_bus_stop_has_name
    assert_equal("Princess Street", @bus_stop.name)
  end

  def test_stop_has_queue
    assert_equal(3, @queue.size)

  end


end

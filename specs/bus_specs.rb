require("minitest/autorun")
require("minitest/rg")
require_relative("../bus")
require_relative("../person")
require_relative("../bus_stops")

class BusTest < MiniTest::Test

  def setup
  @person1 = Person.new("Jennifer", 33)
  @person2 = Person.new("Laura", 42)
  @queue = [@person1, @person2]
  @bus_stop = BusStops.new("Princess Street", @queue)
  @bus1 = Bus.new(22, "Ocean Terminal",[])
  end

  def test_bus_has_route
    assert_equal(22, @bus1.route)
  end

  def test_bus_has_destination
    assert_equal("Ocean Terminal", @bus1.destination)
  end

  def test_bus_can_drive
    assert_equal("Brum Brum", @bus1.drive)
  end

  def test_bus_empty
    # assert_equal([], @bus1.passengers)
    assert_equal([], @bus1.empty)
  end

  def test_bus_can_pick_up
    assert_equal(1, @bus1.pick_up(@person1))
  end

  # def test_bus_can_drop_off
  #   assert_equal(1, @bus1.drop_off(@person1))
  # end

  def test_pick_up_from_queue
    assert_equal(2, @bus1.pick_up_from_queue(@bus_stop))
    assert_equal([], @bus_stop.queue)
  end
end

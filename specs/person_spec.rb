require("minitest/autorun")
require("minitest/rg")
require_relative("../person")

class PersonTest < MiniTest::Test

  def setup
    @person1= Person.new("Jennifer", 33)
  end

  def test_person_has_name
    assert_equal("Jennifer", @person1.name)
  end

  def test_person_has_age
    assert_equal(33, @person1.age)
  end

end

require("minitest/autorun")
require('minitest/rg')

require_relative("../student.rb")

class TestStudent < MiniTest::Test

  def test_get_name
    student = Student.new("Paul", 21)
    
    assert_equal("Paul", student.get_name())
  end

  def test_get_cohort
    student = Student.new("Paul", 21)

    assert_equal(21, student.get_cohort())
  end

  def test_set_name
    student = Student.new("Paul", 21)
    student.set_name("Tony")
    assert_equal("Tony", student.get_name())
  end

  def test_set_cohort
    student = Student.new("Paul", 21)
    student.set_cohort(25)
    assert_equal(25, student.get_cohort())
  end

  def test_talks
    student = Student.new("Paul", 21)

    assert_equal(String, student.talks())
  end

  def test_get_favourite_language
    student = Student.new("Paul", 21)

    assert_equal("I love Ruby", student.get_favourite_langauge("Ruby"))
  end

end

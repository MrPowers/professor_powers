require_relative "calculator"
require_relative "../simple_test"

class CalculatorTest
  def self.add_test
    expected_value = 7
    actual_value = Calculator.add(3, 4)
    SimpleTest::check_expectation("3 plus 4 should equal 7", expected_value, :==, actual_value)
  end

  def self.add_test2
    expected_value = 20
    actual_value = Calculator.add(3, 4)
    SimpleTest::check_expectation("3 plus 4 should not equal 20", expected_value, :!=, actual_value)
  end

  def self.add_test3
    expected_value = 20
    actual_value = Calculator.add(3, 4)
    SimpleTest::check_expectation("This test will fail", expected_value, :==, actual_value)
  end
end

puts CalculatorTest.add_test
puts CalculatorTest.add_test2
puts CalculatorTest.add_test3

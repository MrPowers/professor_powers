module SimpleTest
  def self.check_expectation(expectation, expected_value, boolean_operator, actual_value)
    if expected_value.send(boolean_operator.to_sym, actual_value)
      "PASSED: #{expectation}"
    else
      "FAILED: #{expectation}
        Expected value: #{expected_value}
        Actual value: #{actual_value}
      "
    end
  end
end

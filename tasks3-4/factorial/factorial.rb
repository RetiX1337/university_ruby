# frozen_string_literal: true
require_relative '../math_operations'
require_relative '../digit_validator'

number = DigitValidator.gets_natural_number

puts MathOperations.factorial number
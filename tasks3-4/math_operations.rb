# frozen_string_literal: true

class MathOperations
  def self.is_prime?(number)
    return false if number < 2

    (2..number / 2).none? { |i| number % i == 0 }
  end

  def self.factorial(number)
    if number == 0
      1
    elsif number > 0
      number * factorial(number - 1)
    end
  end
end

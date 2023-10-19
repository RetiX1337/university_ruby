# frozen_string_literal: true

class DigitValidator
  def self.gets_natural_number
    loop do
      number = gets.chomp
      return number.to_i if is_natural_number?(number)
      puts "You have to enter a number!"
    end
  end

  def self.is_natural_number?(number)
    number.match?(/[[:digit:]]/) && number.to_i >= 0
  end
end

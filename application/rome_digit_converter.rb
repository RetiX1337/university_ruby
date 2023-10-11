# frozen_string_literal: true

class RomanConverter
  ROMAN_MAP = {
    1000 => 'M',
    900 => 'CM',
    500 => 'D',
    400 => 'CD',
    100 => 'C',
    90 => 'XC',
    50 => 'L',
    40 => 'XL',
    10 => 'X',
    9 => 'IX',
    5 => 'V',
    4 => 'IV',
    1 => 'I'
  }

  def self.to_roman(number)
    result = ""
    ROMAN_MAP.keys.each do |decimal_key|
      while number >= decimal_key
        number -= decimal_key
        result += ROMAN_MAP[decimal_key]
      end
    end
    result
  end


  def self.to_decimal(roman)
    result = 0
    ROMAN_MAP.values.each do |roman_digit|
      while roman.start_with?(roman_digit)
        roman = roman.slice(roman_digit.length, roman.length)
        result += ROMAN_MAP.key(roman_digit)
      end
    end
    result
  end
end

puts RomanConverter.to_roman(1666) # Expected output: MDCLXVI
puts RomanConverter.to_decimal('MDCLXVI') # Outputs: 1666
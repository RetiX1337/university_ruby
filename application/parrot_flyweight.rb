# frozen_string_literal: true

class ParrotFlyweight
  attr_reader :id, :breed, :pattern, :gender

  def initialize(id, breed, pattern, gender)
    puts "Creating Flyweight of #{breed}, #{pattern}, #{gender}"
    @id = id
    @breed = breed
    @pattern = pattern
    @gender = gender
  end
end

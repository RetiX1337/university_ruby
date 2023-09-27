# frozen_string_literal: true
require_relative 'parrot_flyweight'
require_relative 'parrot'

class ParrotFactory
  @@parrot_flyweight_table = {}
  @@flyweight_counter = 0

  def self.create_parrot(name, age, breed, pattern, gender)
    key = [breed, pattern, gender]
    parrot_flyweight = @@parrot_flyweight_table[key]

    if parrot_flyweight.nil?
      parrot_flyweight = @@parrot_flyweight_table[key] = ParrotFlyweight.new(@@flyweight_counter, breed, pattern, gender)
      @@flyweight_counter += 1
    end
    return Parrot.new(parrot_flyweight, name, age)
  end
end

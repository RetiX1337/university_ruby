# frozen_string_literal: true
require_relative 'parrot_flyweight'

class Parrot
  attr_reader :parrot_flyweight, :name, :age

  def initialize(parrot_flyweight, name, age)
    @parrot_flyweight = parrot_flyweight
    @name = name
    @age = age
  end

end

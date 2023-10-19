# frozen_string_literal: true

class Animal
  attr_accessor :name, :age
  def initialize(name, age)
    @name = name
    @age = age
  end

  def display
    puts "Animal #{@name}, #{@age} years old"
  end
end

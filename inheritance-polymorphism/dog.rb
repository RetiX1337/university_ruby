# frozen_string_literal: true
require_relative './animal'
require_relative './talkable'

class Dog < Animal
  include Talkable

  attr_accessor :breed
  def initialize(name, age, breed)
    super(name, age)
    @breed = breed
  end

  def display
    super
    puts "Dog, breed: #{@breed}"
  end

  def talk
    super
    puts "How weird..."
  end
end


dog = Dog.new("Tuzik", 4, "Mix")
dog.talk
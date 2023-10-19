# frozen_string_literal: true

class Duck
  def quack
    "Krya!"
  end
end

class RoboticDuck
  def quack
    "Krya! *says in robotic tone*"
  end
end

def duck_quack(duck)
  duck.quack
end

robotic_duck = RoboticDuck.new
duck = Duck.new

puts duck_quack(robotic_duck)
puts duck_quack(duck)

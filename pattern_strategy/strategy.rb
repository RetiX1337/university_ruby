# frozen_string_literal: true
class PathStrategy
  def execute
    raise NotImplementedError, 'Method not implemented'
  end
end


class CarPathStrategy < PathStrategy
  def execute
    puts 'Building a path for car'
  end
end

class WalkPathStrategy < PathStrategy
  def execute
    puts 'Building a path for walking'
  end
end

class Map
  attr_accessor :strategy

  def initialize(strategy)
    @strategy = strategy
  end

  def execute_strategy
    @strategy.execute
  end
end

map = Map.new(CarPathStrategy.new)
map.execute_strategy

map.strategy = WalkPathStrategy.new
map.execute_strategy
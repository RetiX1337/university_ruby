# frozen_string_literal: true
class ThreadCoordinator
  attr_accessor :mutex, :condition, :numbers, :turn

  def initialize
    @mutex = Mutex.new
    @condition = ConditionVariable.new
    @numbers = (1..10).to_a.reverse
    @turn = true
  end

  def start_thread(turn_condition, thread_name)
    Thread.new do
      loop do
        mutex.synchronize do
          if turn_condition.call
            condition.wait(mutex)
          end
          break if numbers.empty?

          puts "#{thread_name}: #{numbers.pop}"
          self.turn = !turn
          condition.signal
        end
      end
    end
  end
end

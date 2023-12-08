# frozen_string_literal: true

class Node
  attr_accessor :val, :next

  def initialize(val)
    @val = val
    @next = nil
  end
end

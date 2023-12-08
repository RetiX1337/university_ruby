# frozen_string_literal: true
require_relative 'node'

class CircularLinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def add(val)
    if @head.nil?
      @head = Node.new(val)
      @head.next = @head
    else
      node = Node.new(val)
      current = @head
      current = current.next while current.next != @head
      current.next = node
      node.next = @head
    end
  end
end
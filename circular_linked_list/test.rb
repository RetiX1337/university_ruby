# frozen_string_literal: true
require_relative 'circular_linked_list'
require_relative 'node'

list = CircularLinkedList.new

list.add(1)
list.add(2)
list.add(3)

current = list.head
for i in 1..9 do
  puts current.val
  current = current.next
end
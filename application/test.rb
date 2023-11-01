# frozen_string_literal: true
require_relative './merkle_tree'

tree = MerkleTree.new(['data1', 'data2', 'data3', 'data4', 'data5'])
puts tree.root.hash

puts tree.contains? 'data1' # true
puts tree.contains? 'data15435' # false
puts tree.contains? 'data3' # true
puts tree.contains? 'data5' # true

# frozen_string_literal: true
require 'digest'

class MerkleTree
  attr_reader :root

  def initialize(data)
    @root = build(data)
  end

  private def build(data)
    return if data.empty?

    if data.size == 1
      return Node.new(hash_element(data.first))
    end

    mid = data.size / 2
    left = build(data[0...mid])
    right = build(data[mid...data.size])

    Node.new(hash_element(left.hash + right.hash), left, right)
  end

  private def hash_element(data)
    Digest::SHA2.new(256).hexdigest(data)
  end

  def contains?(data)
    contains_recursive?(@root, hash_element(data))
  end

  private

  def contains_recursive?(node, hash)
    return false if node.nil?
    return true if node.hash == hash

    contains_recursive?(node.left, hash) || contains_recursive?(node.right, hash)
  end

  class Node
    attr_reader :left, :right, :hash

    def initialize(hash, left = nil, right = nil)
      @hash = hash
      @left = left
      @right = right
    end

  end
end

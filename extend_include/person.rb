# frozen_string_literal: true
require_relative '../extend_include/describable'

class Person
  include Describable

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def get_description
    super + " #{name}"
  end
end

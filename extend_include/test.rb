# frozen_string_literal: true
require_relative '../extend_include/person'
require_relative '../extend_include/dummy'

person = Person.new "Matvii"

puts person.get_description

puts Dummy.get_description


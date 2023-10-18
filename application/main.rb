# frozen_string_literal: true
require_relative  '../application/ipv4_validator'

puts Ipv4Validator.is_ipv4_lib?('192.168.1.1')      # true
puts Ipv4Validator.is_ipv4_imperative?('192.168.1.1') # true
puts Ipv4Validator.is_ipv4_imperative?('1.1.1.1') # true

puts Ipv4Validator.is_ipv4_lib?('256.0.0.1')        # false
puts Ipv4Validator.is_ipv4_lib?('006.0.0.1')        # false
puts Ipv4Validator.is_ipv4_lib?('  6.0.0.1')        # false
puts Ipv4Validator.is_ipv4_imperative?('256.0.0.1') # false
puts Ipv4Validator.is_ipv4_imperative?(' 192.01. 0 6.1') # false
puts Ipv4Validator.is_ipv4_imperative?('002.01. 0 6.1') # false
puts Ipv4Validator.is_ipv4_imperative?('2560.00.00.1') # false
puts Ipv4Validator.is_ipv4_imperative?('192.168.1.1.2.5.2') # false
puts Ipv4Validator.is_ipv4_imperative?('0.168.1') # false

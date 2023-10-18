# frozen_string_literal: true
require 'ipaddr'
class Ipv4Validator
  def self.is_ipv4_lib?(ipv4)
    begin
      ip = IPAddr.new(ipv4)
      ip.ipv4?
    rescue IPAddr::InvalidAddressError
      false
    end
  end
  def self.is_ipv4_imperative?(ipv4)
    octets = ipv4.split('.')
    octets.all? do |octet|
      num = octet.to_i
      num.to_s == octet && num.between?(0, 255)
    end
  end
end

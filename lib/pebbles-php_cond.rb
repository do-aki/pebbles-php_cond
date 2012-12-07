require 'pebbles-php_cond/version'

module Pebbles
  module PhpCond
    def self.bool(value)
      return false if value.nil? || value.equal?(false) || value.eql?(0) || value.eql?(0.0)
      return !(value.empty? || value === '0') if value.is_a?(String)
      return !value.count.eql?(0) if value.respond_to?(:count)
      return !value.to_s.size.eql?(0)
    end

    def self.equal?(rhs, lhs)
      return true if rhs.equal?(lhs)

      return bool(lhs) if rhs.equal?(true)
      return bool(rhs) if lhs.equal?(true)

      return !bool(lhs) if rhs.equal?(false)
      return !bool(rhs) if lhs.equal?(false)

      return equal_as_numeric(rhs, lhs) if rhs.is_a?(Numeric)
      return equal_as_numeric(lhs, rhs) if lhs.is_a?(Numeric)

      return !(lhs === '0' || bool(lhs)) if rhs.nil?
      return !(rhs === '0' || bool(rhs)) if lhs.nil?

      return rhs.eql?(lhs) if rhs.class == lhs.class
      return false if rhs.is_a?(String) || lhs.is_a?(String)

      return true if rhs.is_a?(Enumerable) && lhs.is_a?(Enumerable) && rhs.count.eql?(0) && lhs.count.eql?(0)

      return false
    end

    def self.identical?(rhs, lhs)
      return rhs == lhs
    end

    private
    def self.equal_as_numeric(own, other)
        return other.respond_to?(:to_f) && other.to_f.<=>(own).equal?(0) || other.respond_to?(:to_i) && other.to_i.equal?(own)
    end
  end
end


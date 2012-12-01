module Pebbles
  module PhpCond
    def self.bool(value)
      return false if value.nil? || value == false || value == 0 || value == 0.0
      return value != '' && value != '0' if value.is_a?(String)
      return value.count != 0 if value.respond_to?(:count)
      return value.to_s.size != 0
    end

    def self.equal?(rhs, lhs)
      return true if rhs == lhs

      return bool(lhs) if rhs == true
      return bool(rhs) if lhs == true

      return !bool(lhs) if rhs == false
      return !bool(rhs) if lhs == false

      return equal_as_numeric(rhs, lhs) if rhs.is_a?(Numeric)
      return equal_as_numeric(lhs, rhs) if lhs.is_a?(Numeric)

      return !(lhs == '0' || bool(lhs)) if (rhs.nil?)
      return !(rhs == '0' || bool(rhs)) if (lhs.nil?)

      return false if rhs.is_a?(String) || lhs.is_a?(String)

      return true if rhs.is_a?(Enumerable) && lhs.is_a?(Enumerable) && rhs.count == 0 && lhs.count == 0

      return false;
    end

    def self.identical?(rhs, lhs)
      return rhs == lhs
    end

    private
    def self.equal_as_numeric(own, other)
        return other.respond_to?(:to_f) && other.to_f == own || other.respond_to?(:to_i) && other.to_i == own
    end
  end
end


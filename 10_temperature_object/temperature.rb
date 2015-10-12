class Temperature

  def initialize options
    @degrees_fahrenheit = options[:f] || options[:c] * (9.0/5.0) + 32
  end

def in_fahrenheit
    @degrees_fahrenheit
  end

  def in_celsius
    (@degrees_fahrenheit - 32) * (5.0/9.0)
  end

  def self.from_celsius degrees_celsius
   new(c: degrees_celsius)
  end

  def self.from_fahrenheit degrees_fahrenheit
    new(f: degrees_fahrenheit)
  end
end

class Celsius < Temperature

  def initialize temp
    super(c: temp)
  end
end

class Fahrenheit < Temperature

  def initialize temp
    super(f: temp)
  end
end

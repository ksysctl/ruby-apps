# -*- encoding: utf-8 -*-

module Convert
  # Base class
  class Convert::Temperature
    attr_reader :value
    def initialize(value)
      @value = value
    end
  end

  # Celsius class
  class Convert::Celsius < Convert::Temperature
    # Fahrenheit
    def to_f()
      Convert::Fahrenheit.new(
        @value * 1.8 + 32
      ).value()
    end

    # Kelvin
    def to_k()
      Convert::Kelvin.new(
        @value + 273.15
      ).value()
    end

    # Rankine
    def to_r()
      Convert::Rankine.new(
        @value * 1.8 + 32 + 459.67
      ).value()
    end

    # Reaumur
    def to_e()
      Convert::Reaumur.new(
        @value * 0.8
      ).value()
    end
  end

  # Fahrenheit class
  class Convert::Fahrenheit < Convert::Temperature
    # Celsius
    def to_c()
      Convert::Celsius.new(
        (@value - 32) / 1.8
      ).value()
    end

    # Kelvin
    def to_k()
      Convert::Kelvin.new(
        (@value + 459.67) / 1.8
      ).value()
    end

    # Rankine
    def to_r()
      Convert::Rankine.new(
        @value + 459.67
      ).value()
    end

    # Reaumur
    def to_e()
      Convert::Reaumur.new(
        (@value - 32) / 2.25
      ).value()
    end
  end

  # Kelvin class
  class Convert::Kelvin < Convert::Temperature
    # Celsius
    def to_c()
      Convert::Celsius.new(
        @value - 273.15
      ).value()
    end

    # Fahrenheit
    def to_f()
      Convert::Fahrenheit.new(
        @value * 1.8 - 459.67
      ).value()
    end

    # Rankine
    def to_r()
      Convert::Rankine.new(
        @value * 1.8
      ).value()
    end

    # Reaumur
    def to_e()
      Convert::Reaumur.new(
        (@value - 273.15) * 0.8
      ).value()
    end
  end

  # Rankine class
  class Convert::Rankine < Convert::Temperature
    # Celsius
    def to_c()
      Convert::Celsius.new(
        (@value - 32 - 459.67) / 1.8
      ).value()
    end

    # Fahrenheit
    def to_f()
      Convert::Fahrenheit.new(
        @value - 459.67
      ).value()
    end

    # Kelvin
    def to_k()
      Convert::Kelvin.new(
        @value / 1.8
      ).value()
    end

    # Reaumur
    def to_e()
      Convert::Reaumur.new(
        (@value - 32 - 459.67) / 2.25
      ).value()
    end
  end

  # Reaumur class
  class Convert::Reaumur < Convert::Temperature
    # Celsius
    def to_c()
      Convert::Celsius.new(
        @value * 1.25
      ).value()
    end

    # Fahrenheit
    def to_f()
      Convert::Fahrenheit.new(
        @value * 2.25 + 32
      ).value()
    end

    # Kelvin
    def to_k()
      Convert::Kelvin.new(
        @value * 1.25 + 273.15
      ).value()
    end

    # Rankine
    def to_r()
      Convert::Rankine.new(
        @value * 2.25 + 32 + 459.67
      ).value()
    end
  end
end

# Numeric class implements convertions
class Numeric
  def fahrenheit()
    Convert::Fahrenheit.new(self)
  end

  def celsius()
    Convert::Celsius.new(self)
  end

  def kelvin()
    Convert::Kelvin.new(self)
  end

  def rankine()
    Convert::Rankine.new(self)
  end

  def reaumur()
    Convert::Reaumur.new(self)
  end
end

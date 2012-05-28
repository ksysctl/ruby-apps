# -*- encoding: utf-8 -*-

require 'test/unit'
require_relative '../convert/temperature'

NUMBER = 25.0

# Celsius class
class TestCelsius < Test::Unit::TestCase
  TO_F = 77
  TO_K = 298.15
  TO_R = 536.6700000000001
  TO_E = 20

  def setup()
     @number = NUMBER.celsius()
  end

  def teardown()
  end

  def test_direct()
    assert_equal(TO_F, NUMBER.celsius.to_f)
    assert_equal(TO_K, NUMBER.celsius.to_k)
    assert_equal(TO_R, NUMBER.celsius.to_r)
    assert_equal(TO_E, NUMBER.celsius.to_e)
  end

  def test_instance()
    assert_equal(TO_F, @number.to_f)
    assert_equal(TO_K, @number.to_k)
    assert_equal(TO_R, @number.to_r)
    assert_equal(TO_E, @number.to_e)
  end

  def test_class()
    assert_equal(TO_F, Convert::Celsius.new(NUMBER).to_f)
    assert_equal(TO_K, Convert::Celsius.new(NUMBER).to_k)
    assert_equal(TO_R, Convert::Celsius.new(NUMBER).to_r)
    assert_equal(TO_E, Convert::Celsius.new(NUMBER).to_e)
  end
end

# Fahrenheit class
class TestFahrenheit < Test::Unit::TestCase
  TO_C = -3.888888888888889
  TO_K = 269.2611111111111
  TO_R = 484.67
  TO_E = -3.111111111111111

  def setup()
     @number = NUMBER.fahrenheit()
  end

  def teardown()
  end

  def test_direct()
    assert_equal(TO_C, NUMBER.fahrenheit.to_c)
    assert_equal(TO_K, NUMBER.fahrenheit.to_k)
    assert_equal(TO_R, NUMBER.fahrenheit.to_r)
    assert_equal(TO_E, NUMBER.fahrenheit.to_e)
  end

  def test_instance()
    assert_equal(TO_C, @number.to_c)
    assert_equal(TO_K, @number.to_k)
    assert_equal(TO_R, @number.to_r)
    assert_equal(TO_E, @number.to_e)
  end

  def test_class()
    assert_equal(TO_C, Convert::Fahrenheit.new(NUMBER).to_c)
    assert_equal(TO_K, Convert::Fahrenheit.new(NUMBER).to_k)
    assert_equal(TO_R, Convert::Fahrenheit.new(NUMBER).to_r)
    assert_equal(TO_E, Convert::Fahrenheit.new(NUMBER).to_e)
  end
end

# Kelvin class
class TestKelvin < Test::Unit::TestCase
  TO_F = -414.67
  TO_C = -248.14999999999998
  TO_R = 45
  TO_E = -198.51999999999998

  def setup()
     @number = NUMBER.kelvin()
  end

  def teardown()
  end

  def test_direct()
    assert_equal(TO_F, NUMBER.kelvin.to_f)
    assert_equal(TO_C, NUMBER.kelvin.to_c)
    assert_equal(TO_R, NUMBER.kelvin.to_r)
    assert_equal(TO_E, NUMBER.kelvin.to_e)
  end

  def test_instance()
    assert_equal(TO_F, @number.to_f)
    assert_equal(TO_C, @number.to_c)
    assert_equal(TO_R, @number.to_r)
    assert_equal(TO_E, @number.to_e)
  end

  def test_class()
    assert_equal(TO_F, Convert::Kelvin.new(NUMBER).to_f)
    assert_equal(TO_C, Convert::Kelvin.new(NUMBER).to_c)
    assert_equal(TO_R, Convert::Kelvin.new(NUMBER).to_r)
    assert_equal(TO_E, Convert::Kelvin.new(NUMBER).to_e)
  end
end

# Rankine class
class TestRankine < Test::Unit::TestCase
  TO_F = -434.67
  TO_C = -259.2611111111111
  TO_K = 13.88888888888889
  TO_E = -207.4088888888889

  def setup()
     @number = NUMBER.rankine()
  end

  def teardown()
  end

  def test_direct()
    assert_equal(TO_F, NUMBER.rankine.to_f)
    assert_equal(TO_C, NUMBER.rankine.to_c)
    assert_equal(TO_K, NUMBER.rankine.to_k)
    assert_equal(TO_E, NUMBER.rankine.to_e)
  end

  def test_instance()
    assert_equal(TO_F, @number.to_f)
    assert_equal(TO_C, @number.to_c)
    assert_equal(TO_K, @number.to_k)
    assert_equal(TO_E, @number.to_e)
  end

  def test_class()
    assert_equal(TO_F, Convert::Rankine.new(NUMBER).to_f)
    assert_equal(TO_C, Convert::Rankine.new(NUMBER).to_c)
    assert_equal(TO_K, Convert::Rankine.new(NUMBER).to_k)
    assert_equal(TO_E, Convert::Rankine.new(NUMBER).to_e)
  end
end

# Reaumur class
class TestReaumur < Test::Unit::TestCase
  TO_F = 88.25
  TO_C = 31.25
  TO_K = 304.4
  TO_R = 547.9200000000001

  def setup()
     @number = NUMBER.reaumur()
  end

  def teardown()
  end

  def test_direct()
    assert_equal(TO_F, NUMBER.reaumur.to_f)
    assert_equal(TO_C, NUMBER.reaumur.to_c)
    assert_equal(TO_K, NUMBER.reaumur.to_k)
    assert_equal(TO_R, NUMBER.reaumur.to_r)
  end

  def test_instance()
    assert_equal(TO_F, @number.to_f)
    assert_equal(TO_C, @number.to_c)
    assert_equal(TO_K, @number.to_k)
    assert_equal(TO_R, @number.to_r)
  end

  def test_class()
    assert_equal(TO_F, Convert::Reaumur.new(NUMBER).to_f)
    assert_equal(TO_C, Convert::Reaumur.new(NUMBER).to_c)
    assert_equal(TO_K, Convert::Reaumur.new(NUMBER).to_k)
    assert_equal(TO_R, Convert::Reaumur.new(NUMBER).to_r)
  end
end

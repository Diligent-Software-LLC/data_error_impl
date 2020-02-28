require 'test_helper'

# DataErrorImplTest.
# @abstract:
# Tests the DataErrorImpl class and the DataErrorImplHelper module.
class DataErrorImplTest < Minitest::Test

  include DataErrorImplHelper

  # Constants
  TEST_MESSAGE         = 'Test.'.freeze()
  TEST_DEFAULT_MESSAGE = DataErrorImpl::DEFAULT_MESSAGE
  TEST_INTERFACE       = DataErrorImpl::INTERFACE

  # setup().
  # @abstract:
  # Initializes the test variables.
  def setup()
    @argument_initialize = DataErrorImpl.new('Test.')
    @default_initialize  = DataErrorImpl.new()
  end

  # test_that_it_has_a_version_number().
  # @abstract:
  # DataErrorImpl defined its version.
  def test_that_it_has_a_version_number()
    refute_nil ::DataErrorImpl::VERSION
  end

  # test_nil_argument_returns_default().
  # @abstract:
  # A nil argument returns the TEST_DEFAULT_MESSAGE.
  def test_nil_argument_returns_default()

    argument      = nil
    return_object = choose(argument)
    assert_equal(TEST_DEFAULT_MESSAGE, return_object)

  end

  # test_string_argument_returns_string_argument().
  # @abstract:
  # A String argument returns the same String argument.
  def test_string_argument_returns_string_argument()

    argument = ''
    choice   = choose(argument)
    assert_equal(argument, choice)

  end

  # test_argument_initialize().
  # @abstract:
  # @argument_initialize's message attribute is the proper String.
  def test_argument_initialize()
    assert_equal(TEST_MESSAGE, @argument_initialize.message())
  end

  # test_default_initialize().
  # @abstract:
  # @default_initialize's message attribute is the appropriate String.
  def test_default_initialize()
    assert_equal(TEST_DEFAULT_MESSAGE, @default_initialize.message())
  end

  # test_unacceptable_data_raises_error().
  # @abstract:
  # An unacceptable data argument raises an error.
  def test_unacceptable_data_raises_error()

    assert_raises(TEST_INTERFACE) {
      @default_initialize.raise_exception(@argument_initialize)
    }

  end

  # test_nil_object_acceptability().
  # @abstract
  # nil is acceptable.
  def test_nil_object_acceptability()
    nil_object = nil
    assert(DataErrorImpl.acceptable?(nil_object))
  end

  # test_object_type_conversion().
  # @abstract:
  # The helper conversion method takes an object instance and returns its
  # stringified type name.
  def test_object_type_conversion()

    object_instance  = Object.new()
    class_constant   = object_instance.class()
    stringified_type = class_constant.to_s()
    helper_return    = stringify_obj_type(object_instance)
    assert_equal(stringified_type, helper_return)

  end

  # test_numeric_acceptability().
  # @abstract
  # All Numeric types are acceptable.
  def test_numeric_acceptability()

    complex_instance  = 2 + 1i
    float_instance    = 3.14
    integer_instance  = 1
    rational_instance = Rational(1, 2)

    assert(DataErrorImpl.acceptable?(complex_instance))
    assert(DataErrorImpl.acceptable?(float_instance))
    assert(DataErrorImpl.acceptable?(integer_instance))
    assert(DataErrorImpl.acceptable?(rational_instance))

  end

  # test_false_class_acceptability().
  # @abstract
  # false is acceptable.
  def test_false_class_acceptability()
    assert(DataErrorImpl.acceptable?(false))
  end

  # test_true_class_acceptability()
  # @abstract
  # true is acceptable.
  def test_true_acceptability()
    true_instance = true
    assert(DataErrorImpl.acceptable?(true_instance))
  end

  # test_symbol_acceptability().
  # @abstract
  # Symbol is acceptable.
  def test_symbol_acceptability()
    symbol_instance = :test_symbol
    assert(DataErrorImpl.acceptable?(symbol_instance))
  end

  # test_string_acceptability().
  # @abstract
  # String is acceptable.
  def test_string_acceptability()
    string_instance = 'test'
    assert(DataErrorImpl.acceptable?(string_instance))
  end

  # test_time_acceptability().
  # @abstract
  # Time is acceptable.
  def test_time_acceptability()
    time_instance = Time.now()
    assert(DataErrorImpl.acceptable?(time_instance))
  end

end

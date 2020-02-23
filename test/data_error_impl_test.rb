require 'test_helper'

# DataErrorImplTest.
# @abstract:
# Tests the DataErrorImpl class and the DataErrorImplHelper module.
class DataErrorImplTest < Minitest::Test

  include DataErrorImplHelper

  TEST_MESSAGE         = 'Test.'
  DEFAULT_MESSAGE      = DataErrorImpl::DEFAULT_MESSAGE
  IMPLEMENTATION_CLASS = DataErrorImpl::INTERFACE

  # setup().
  # @abstract:
  # Initializes the test variables.
  def setup()
    @test_message_initialized = DataErrorImpl.new(TEST_MESSAGE)
    @default_initialized      = DataErrorImpl.new()
    @nil_argument = nil
  end

  # test_that_it_has_a_version_number().
  # @abstract:
  # DataErrorImpl defined its version.
  def test_that_it_has_a_version_number()
    refute_nil ::DataErrorImpl::VERSION
  end

  # test_nil_argument_returns_default().
  # @abstract:
  # A nil argument returns the DEFAULT_MESSAGE.
  def test_nil_argument_returns_default()

    argument      = nil
    return_object = choose(argument)
    assert_equal(DEFAULT_MESSAGE, return_object)

  end

  # test_string_argument_returns_string_argument().
  # @abstract:
  # A String argument returns the same String argument.
  def test_string_argument_returns_string_argument()

    argument = ''
    choice   = choose(argument)
    assert_equal(argument, choice)

  end

  # test_test_message_initialized().
  # @abstract:
  # @test_message_initialized's message attribute is the proper String.
  def test_test_message_initialized()
    assert_equal(TEST_MESSAGE, @test_message_initialized.message())
  end

  # test_default_initialized().
  # @abstract:
  # @default_initialized's message attribute is the appropriate String.
  def test_default_initialized()
    assert_equal(DEFAULT_MESSAGE, @default_initialized.message())
  end

  # test_unacceptable_data_raises_error().
  # @abstract:
  # An unacceptable data argument raises an error.
  def test_unacceptable_data_raises_error()

    assert_raises(IMPLEMENTATION_CLASS) {
      @default_initialized.raise_exception(@test_message_initialized)
    }

  end

  # test_nil_argument_is_acceptable().
  # @abstract:
  # A nil argument is an acceptable data type.
  def test_nil_argument_is_acceptable()
    assert(DataErrorImpl.acceptable?(@nil_argument))
  end

  # test_object_sym_conversion().
  # @abstract:
  # The helper conversion method takes an object instance and returns its
  # symbolized class name.
  def test_object_sym_conversion()
    conversion = convert_obj_sym(@nil_argument)
    assert_equal(:NilClass, conversion)
  end

end

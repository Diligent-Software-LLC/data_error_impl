require "test_helper"

# DataErrorImplTest.
# @abstract:
# Tests the DataErrorImpl class and the DataErrorImplHelper module.
class DataErrorImplTest < Minitest::Test

  TEST_MESSAGE         = 'Test.'
  DEFAULT_MESSAGE      = DataErrorImpl::DEFAULT_MESSAGE
  IMPLEMENTATION_CLASS = DataErrorImpl::INTERFACE

  # setup().
  # @abstract:
  # Initializes the test variables.
  def setup()
    @test_message_initialized = DataErrorImpl.new(TEST_MESSAGE)
    @default_initialized      = DataErrorImpl.new()
  end

  # test_that_it_has_a_version_number().
  # @abstract:
  # DataErrorImpl defined its version.
  def test_that_it_has_a_version_number()
    refute_nil ::DataErrorImpl::VERSION
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

end

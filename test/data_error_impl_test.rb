require_relative 'test_helper'

# DataErrorTest.
# @class_description
#   Tests the DataError class.
class DataErrorTest < Minitest::Test

  # Constants
  DM = DataError::DEFAULT_MESSAGE

  # test_conf_doc_f_ex().
  # @description
  #   The .travis.yml, CODE_OF_CONDUCT.md, Gemfile, LICENSE.txt, README.md,
  #   and .yardopts files exist.
  def test_conf_doc_f_ex()

    assert_path_exists('.travis.yml')
    assert_path_exists('CODE_OF_CONDUCT.md')
    assert_path_exists('Gemfile')
    assert_path_exists('LICENSE.txt')
    assert_path_exists('README.md')

  end

  # test_version_declared().
  # @description
  #   version.rb defined the version.
  def test_version_declared()
    refute_nil(DataError::VERSION)
  end

  # setup().
  # @description
  #   Initializes fixtures.
  def setup()

    @x1_data = 'Test.'
    @y1_inst = DataError.new(@x1_data)
    @y2_inst = DataError.new()
    @x3_data = nil

  end

  # initialize(message = DEFAULT_MESSAGE)

  # test_init_x1().
  # @description
  #   Arguing a String message. Returns a DataError object. The object's
  #   message is the argument.
  def test_init_x1()
    assert_instance_of(DataError, @y1_inst)
    assert_same(@x1_data, @y1_inst.message())
  end

  # test_init_x2().
  # @description
  #   No argument initialization. Returns a DataError object. The message is
  #   the default message.
  def test_init_x2()

    expected_m = DM
    assert_instance_of(DataError, @y2_inst)
    assert_equal(expected_m, @y2_inst.message())

  end

  # test_init_x3().
  # @description
  #   An invalid argument raises an ArgumentError.
  def test_init_x3()

    expected_m = "#{nil} is not a String."
    assert_raises(ArgumentError, expected_m) {
      DataError.new(@x3_data)
    }

  end

  # message()

  # test_message_x1().
  # @description
  #   A String argument becomes the instance's message.
  def test_message_x1()

    expected_m = @x1_data
    actual_m   = @y1_inst.message()
    assert_same(expected_m, actual_m)

  end

  # test_message_x2().
  # @description
  #   No argument. The default message becomes the message.
  def test_message_x2()
    expected_m = DM
    assert_equal(expected_m, @y2_inst.message())
  end

  # test_message_x3().
  # @description
  #   An invalid argument raises an ArgumentError.
  def test_message_x3()

    expected_m = "#{nil} is not a String."
    assert_raises(ArgumentError, expected_m) {
      DataError.new(@x3_data)
    }

  end

  # teardown().
  # @description
  #   Cleans memory.
  def teardown()
  end

end

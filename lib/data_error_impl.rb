# Copyright (C) 2020 Diligent Software LLC. All rights reserved. Released
# under the MIT License.

require 'data_error_impl/version'
require_relative 'data_error_impl_helper'

class DataErrorImpl < DataError

  include DataErrorImplHelper
  extend DataErrorImplHelper

  # self.acceptable?(unknown_argument).
  # @abstract:
  # Class method. Verifies an object is an acceptable data type.
  # @param [Object] unknown_argument
  # An unknown type object.
  # @return: true in the case the argument is an acceptable data type
  # instance, and false otherwise.
  def self.acceptable?(unknown_argument)
    conversion = convert_obj_sym(unknown_argument)
    return (ACCEPTABLE_CORE_TYPES.include?(conversion))
  end

  # initialize(message = DEFAULT_MESSAGE).
  # @abstract:
  # The constructor. In the case the argument is nil, or no argument was
  # provided, the message attribute is the default message.
  # @param [String] message
  # A raised error explanation.
  def initialize(message = DEFAULT_MESSAGE)
    self.message = message
  end

  # message().
  # @abstract:
  # Getter method. Gets and returns the message attribute.
  def message()
    return @message
  end

  # raise_exception(argued_object).
  # @abstract:
  # In the case the argument was an unacceptable type, raises a DataError.
  # @param [Object] argued_object
  # A type unkonwn object.
  def raise_exception(argued_object)
    (raise INTERFACE, message()) unless (DataErrorImpl.acceptable?(argued_object))
  end

  private

  # message=(explanation).
  # @abstract:
  # Setter method. Sets the message attribute the argument explanation.
  # @param [String] explanation
  # A raised error's explanation.
  def message=(explanation)
    @message = choose(explanation)
  end

end

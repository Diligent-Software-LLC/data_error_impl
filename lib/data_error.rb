# Copyright (C) 2020 Diligent Software LLC. All rights reserved. Released
# under the MIT License.

require_relative 'data_error/version'

# DataError.
# @abstract
#   Implements the DataError exception class interface.
# @attribute [String] message
#   The error explanation.
class DataError < DataErrorInt

  # initialize(message = DEFAULT_MESSAGE).
  # @abstract
  #   Constructor. Initializes an error object.
  # @param [String] message
  #   An error explanation. Defaults the default message.
  # @return [DataError]
  #   The error instance.
  def initialize(message = DEFAULT_MESSAGE)
    self.message = message
  end

  # message().
  # @abstract
  #   Gets the error's message.
  # @return [String] message
  #   The error message.
  def message()
    return @message
  end

  private

  # message=(explanation = nil).
  # @abstract
  #   Sets the error's message.
  # @param [String] explanation
  #   The error message. In the case the explanation is not a String
  #   instance, raises an ArgumentError.
  def message=(explanation = nil)
    if (!explanation.instance_of?(String))
      raise(ArgumentError, "#{explanation} is not a String.")
    else
      @message = explanation
    end
  end

end

# Copyright (C) 2020 Diligent Software LLC. All rights reserved. Released
# under the GNU General Public License, Version 3. Refer LICENSE.txt.

require_relative 'data_error_impl/version'

# DataError.
# @description
#   Implements the DataError exception class interface.
# @attr message [String]
#   The error explanation.
class DataError < DataErrorInt

  # initialize(message = DEFAULT_MESSAGE).
  # @description
  #   Initializes an error.
  # @param message [String]
  #   An error explanation. Defaults the default message.
  # @return [DataError]
  #   The error instance.
  def initialize(message = DEFAULT_MESSAGE)
    self.message = message
  end

  # message().
  # @description
  #   Gets message.
  # @return [String]
  #   The error message reference.
  def message()
    return @message.freeze()
  end

  private

  # message=(explanation = nil).
  # @description
  #   Sets message.
  # @param explanation [String]
  #   The error message.
  # @raise [ArgumentError]
  #   In the case the explanation is not a String instance.
  def message=(explanation = nil)

    if (!explanation.instance_of?(String))
      raise(ArgumentError, "#{explanation} is not a String.")
    else
      @message = explanation
    end

  end

end

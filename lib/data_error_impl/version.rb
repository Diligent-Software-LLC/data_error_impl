# Copyright (C) 2020 Diligent Software LLC. All rights reserved. Released
# under the MIT License.

require 'data_error_int'

# DataError.
# @abstract
#   Implements and subclasses the DataError interface.
# @attribute [String] message
#   The error explanation.
class DataError < DataErrorInt
  VERSION = '2.0.1'.freeze()
end

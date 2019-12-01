# Copyright (C) 2019 Diligent Software LLC. All rights reserved. Released
# under the MIT License.
require 'data_error'
require 'argument_type_error_helper'

# DataErrorImpl.
# @abstract:
# Implements and subclasses the DataError interface.
# @attribute message: the user's error message, and a String object.
class DataErrorImpl < DataError

  VERSION = "1.1.0"

end

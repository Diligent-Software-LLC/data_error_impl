# Copyright (C) 2020 Diligent Software LLC. All rights reserved. Released
# under the MIT License.

require 'data_error'

# DataErrorImpl.
# @abstract:
# Implements and subclasses the DataError interface.
# @attribute message: the user's error message, and a String object.
class DataErrorImpl < DataError

  VERSION = ::VERSION

end

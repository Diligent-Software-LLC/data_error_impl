# Copyright (C) 2019 Diligent Software LLC. All rights reserved. Released
# under the MIT License.
require 'data_error'
require 'data_error_impl_helper'

# DataErrorImpl.
# @abstract:
# Implements and subclasses the DataError interface.
# @attribute message: the user's error message, and a String object.
class DataErrorImpl < DataError

  include DataErrorImplHelper
  extend DataErrorImplHelper

  VERSION = "1.4.0"

end

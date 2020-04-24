# Copyright (C) 2020 Diligent Software LLC. All rights reserved. Released
# under the GNU General Public License, Version 3. Refer LICENSE.txt.

require 'data_error_int'

# DataError.
# @class_description
#   Implements the DataError interface.
# @attr message [String]
#   The error explanation.
class DataError < DataErrorInt
  VERSION = '3.0.0'.freeze()
end

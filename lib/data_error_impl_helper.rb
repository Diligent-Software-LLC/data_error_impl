# Copyright (C) 2020 Diligent Software LLC. All rights reserved. Released
# under the MIT License.

# DataErrorImplHelper.
# @abstract:
# Contains helper methods.
module DataErrorImplHelper

  # convert_obj_sym(argument_object).
  # @abstract:
  # Takes an object or value and symbolizes the object's type.
  # @pre: an object or value exists.
  # @post: the argument's class name returns, symbolized.
  # @param [Object] argument_object
  # An unknown object.
  def convert_obj_sym(argument_object)

    object_class     = argument_object.class()
    symbolized_class = object_class.to_s().to_sym()
    return (symbolized_class)

  end

  # choose(explanation).
  # @abstract:
  # In the case the argument is nil or any type excluding String, returns the
  # DEFAULT_MESSAGE. Otherwise, returns the argument.
  # @param [String] explanation
  # A raised error explanation.
  def choose(explanation)

    if (explanation.nil?() || !explanation.instance_of?(String))
      return DataErrorImpl::DEFAULT_MESSAGE
    else
      return explanation
    end

  end

end
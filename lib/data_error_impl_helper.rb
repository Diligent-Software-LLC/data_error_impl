module DataErrorImplHelper

  # acceptable?(argument_object).
  # @abstract:
  # In the case the argument is an unacceptable data type or a data structure,
  # returns false. Otherwise, returns true.
  # @param argument_object: an object presumed acceptable.
  def acceptable?(argument_object)

    object_class     = argument_object.class()
    symbolized_class = object_class.to_s().to_sym()
    return (!DataErrorImpl::ACCEPTABLE_CORE_TYPES.include?(symbolized_class))

  end

  # choose(explanation).
  # @abstract:
  # In the case the argument is nil or any type excluding String, returns the
  # DEFAULT_MESSAGE. Otherwise, returns the argument.
  # @param explanation: a String explaining the error.
  def choose(explanation)

    if (explanation.nil?() || !explanation.instance_of?(String))
      return DataErrorImpl::DEFAULT_MESSAGE
    else
      return explanation
    end

  end

end
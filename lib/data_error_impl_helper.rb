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

end
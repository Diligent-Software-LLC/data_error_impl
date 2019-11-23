# DataErrorImplHelper.
# @abstract:
# Implements helper methods.
module DataErrorImplHelper

  DEFAULT_MESSAGE       = "The data type argued is unacceptable. Refer documentation."
  ACCEPTABLE_CORE_TYPES = [:Complex, :Float, :Integer, :Rational, :String,
                           :Bignum, :Fixnum, :NilClass, :Symbol, :Time]

  # choose(explanation).
  # @abstract:
  # In the case the argument is nil, returns the DEFAULT_MESSAGE. Otherwise,
  # returns the argument.
  # @param explanation: a String explaining the error.
  def choose(explanation)

    if (!explanation.nil?())
      return explanation
    else
      return DEFAULT_MESSAGE
    end

  end

  # raise?(presumed_acceptable).
  # @abstract:
  # In the case the argument is an unacceptable data type or a data structure,
  # returns false. Otherwise, returns true.
  # @param presumed_acceptable: an object presumed acceptable.
  def raise?(presumed_acceptable)

    object_class     = presumed_acceptable.class()
    symbolized_class = object_class.to_s().to_sym()
    return (!ACCEPTABLE_CORE_TYPES.include?(symbolized_class))

  end

end
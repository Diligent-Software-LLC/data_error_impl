require "data_error_impl/version"

class DataErrorImpl < DataError

  ACCEPTABLE_CORE_TYPES = [:Complex, :Float, :Integer, :Rational, :String,
                           :Bignum, :Fixnum, :NilClass, :Symbol, :Time]
  INTERFACE             = superclass()

  include ArgumentTypeErrorHelper

  # initialize(message_argument = nil).
  # @abstract:
  # The constructor. In the case the argument is nil, sets the message
  # attribute the DEFAULT_MESSAGE.
  # @param message_argument: a String explaining the error.
  def initialize(message_argument = nil)
    self.message = message_argument
  end

  # message().
  # @abstract:
  # Getter method. Gets and returns the message attribute.
  def message()
    return @message
  end

  # raise_exception(data_type).
  # @abstract:
  # In the case the argument is an unacceptable type or a data structure,
  # raises.
  # @param data_type: a presumed acceptable data type.
  def raise_exception(data_type)
    (raise INTERFACE, message()) if (raise?(data_type))
  end

  private

  # message=(explanation).
  # @abstract:
  # Setter method. In the case explanation is nil, sets the message attribute
  # the DEFAULT_MESSAGE. Otherwise, sets the message attribute the explanation.
  def message=(explanation)
    @message = choose(explanation)
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

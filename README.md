# DataErrorImpl

Implements and subclasses the `DataError` interface. Defines the acceptable data 
argument types. Contains six methods. Three are `public` instance methods, one 
is a `private` instance method, and two are helper methods.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'data_error_impl'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install data_error_impl

## Usage

### Constants

- `ACCEPTABLE_CORE_TYPES`

An array containing acceptable object types. The acceptable types are 
Complex, Float, Integer, Rational, String, Bignum, Fixnum, NilClass, Symbol, 
and Time.

- `INTERFACE`

Stores the superclass name.

### Public methods

#### `initialize(message_argument = nil)`

The constructor. In the case the argument is `nil`, sets the message attribute 
the `DEFAULT_MESSAGE`.

#### `message()`

Getter method. Gets and returns the message attribute.

#### `raise_exception(data_type)`

In the case the argument is an unacceptable type or a data structure, raises.
Takes a presumed acceptably typed object.

### Private methods

#### `message=(explanation)`

Setter method. In the case `explanation` is `nil`, sets the message attribute the 
`DEFAULT_MESSAGE`. Otherwise, sets the message attribute the explanation.

### Helper methods

#### `choose(explanation)`

In the case the argument is `nil`, returns the `DEFAULT_MESSAGE`. Otherwise, 
returns the argument.

#### `raise?(presumed_acceptable)`

In the case the argument is an unacceptable data type or a data structure, returns 
`false`. Otherwise, returns `true`.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`.

### Testing

All methods were basically tested.

## Contributing

Bug reports and pull requests are welcome on GitHub at 
https://github.com/scientist8202/data_error_impl. This project is intended to 
be a safe, welcoming space for collaboration, and contributors are expected 
to adhere to the 
[Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the 
[MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the DataErrorImpl project’s codebases, issue trackers, 
chat rooms and mailing lists is expected to follow the 
[code of conduct](https://github.com/scientist8202/data_error_impl/blob/master/CODE_OF_CONDUCT.md).

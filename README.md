# DataErrorImpl [![Gem Version](https://badge.fury.io/rb/data_error_impl.svg)](https://badge.fury.io/rb/data_error_impl) ![Gem](https://img.shields.io/gem/dt/data_error_impl) ![Travis (.com) branch](https://img.shields.io/travis/com/Diligent-Software-LLC/data_error_impl/master)

Implements and subclasses the `DataError` interface.

## Installation

Add this line to your application's Gemfile:

```ruby
gem "data_error_impl", "~> 1.4.4"
```

And then execute:

    $ bundle install

### Versioning

The gem abides the [Semantic Versioning](https://www.semver.org) system:

"Given a version number MAJOR.MINOR.PATCH, increment the:

- MAJOR version when you make [backwardly] incompatible API changes,
- MINOR version when you add functionality in a backwards compatible manner, and
- PATCH version when you make backwards compatible bug fixes.

Additional labels for pre-release and build metadata are available as
extensions to the MAJOR.MINOR.PATCH format."

**All versions <= 2.0.0 are unstable or incomplete.**

## Usage

```ruby
 # Verifying type acceptability.
 # Let "unknown_object" be an unknown typed object.

   DataErrorImpl.acceptable?(unknown_object) # => yields true or false 

 # Raising data type errors.
 # Let "unknown_object" be an unknown typed object.
  
  error_instance = DataErrorImpl.new() # => yields DataErrorImpl instance
  error_instance.raise_exception(unknown_object) 
 
 # => in the case the object type is neither Numeric, FalseClass, TrueClass
 #, Symbol, String, or Time, raises a DataError.
```

### Attributes

- [String] `message`

A message explaining its instance's raised exception.

### Constants

- `INTERFACE`

Inherited DataError constant. Defines the interface name. The interface name
 is the DataError constant.

* `ACCEPTABLE_CORE_TYPES`

Inherited DataError constant. An array containing stringified types. The
 acceptable types are Numeric, FalseClass, TrueClass, Symbol, String, and
 Time.

* `DEFAULT_MESSAGE`

Inherited DataError constant. Defines an instance's default error
 message. The STDERR string is "The argument was neither a Numeric, FalseClass
 , TrueClass, Symbol, String, or Time object."

### Public methods

The four public signatures are `self.acceptable?(unkonwn_argument
)`, `initialize(message = DEFAULT_MESSAGE)`, `message()`, and `raise_exception
(argued_object)`.

#### `self.acceptable?(unknown_argument)`

Class method. Verifies an object is an acceptable data type. Returns true in 
the case the argument is acceptable data, and false otherwise.

#### `initialize(message = DEFAULT_MESSAGE)`

The constructor. Takes a String argument, message, explaining the default
 message raised in STDERR. The default is the default message.

#### `message()`

Getter method. Gets and returns the message.

#### `raise_exception(argued_object)`

In the case the object is an unacceptable data type instance, raises. Takes
 an unknown typed object.

### Helper methods

#### `stringify_obj_type(argument_object)`

Stringifies an argument object's type. Takes an Object instance and returns
 its stringified type.

#### `choose(explanation)`

A strategy method. In the case the explanation is not a String, the default
 message is "The argument was neither a Complex, Float, Integer, Rational
 , String, Bignum, Fixnum, NilClass, Symbol, or Time object.".

## Development

The source code is available at Github, or through Rubygems.org. Fork and
 clone the repository. The component depends on bundler 2.1.x, where x >= 2
 , so in the case the installed version is different, run `$ bundle update
  --bundler`. Follow the update with `$ bundle install` to install the
remaining dependencies. Modify the "spec.authors" line in the gem
 specification file, and include ones name. When ready, submit a pull request.

## Contributing

Pull requests are welcome on GitHub at 
https://github.com/Diligent-Software-LLC/data_error_impl. This project is
 intended to be a safe, welcoming space for collaboration, and contributors are
expected to adhere to the 
[Contributor Covenant](http://contributor-covenant.org) code of conduct.

### Code Format

Use the [Ruby Style Guide](https://rubystyle.guide).

### Code of Conduct

### Bug reports

### Pull requests

## License

Copyright (C) 2020 Diligent Software LLC. All rights reserved. Released under
 the MIT License. The gem is available as open source under the terms of the 
[MIT License](https://opensource.org/licenses/MIT).

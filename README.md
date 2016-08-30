# MultiRequire

Easy way to require multiple files from a relative path

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'multi_require'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install multi_require

## Usage

```ruby
include MultiRequire
require_pattern '/path/to/files/*'
require_relative_pattern 'path/to/files/**'

MultiRequire.require_pattern '/path/to/files/*'
MultiRequire.require_relative_pattern 'path/to/files/**'

module MyModule
  extend MultiRequire
  require_pattern '/path/to/files/*'
  require_relative_pattern 'path/to/files/**'
end
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/gabynaiman/multi_require.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).


# DeRanger

Gem to deal with subtracting ranges from ranges.

## Installation

Add this line to your application's Gemfile:

    gem 'de_ranger'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install de_ranger

## Usage

    include DeRanger
    available_ranges = [1..10000]
    taken_ranges = [4..7, 502..717]
    DeRange.it available_ranges,taken_ranges
    => [1..4, 7..502, 717..10000]

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

# Mongo::Helpers

It is an utility gem which extends the functionality of `Mongo` gem.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'mongo-helpers'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mongo-helpers

## Usage

After adding the gem in the Gemfile, or by requiring it in the code. It will add
`rename` method to `Model.collection`.

e.g.

```ruby
class User
  include Mongoid::Document
end

User.collection.rename("test_user")
# => It will rename "user" collection to "test_user"
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/kuldeepaggarwal/mongo-helpers/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

# Metova::Logger

Including this gem will format Rails logs with Lograge. Logs will include user ID, e-mail, and request IP.

## Installation

Add this line to your application's Gemfile:

```ruby
group :staging, :production do
  gem 'metova-logger'
end
```

And then execute:

    $ bundle

## Contributing

1. Fork it ( https://github.com/[my-github-username]/metova-logger/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

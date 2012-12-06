# zhuna.cn API Wrapper

A simple wrapper for zhuna.cn open API [API Docs](http://open.zhuna.cn/index.php?m=api.category). Just for needs of my project, their API sucked, the naming conventions are kind of mess. Anyway, I have to wrap them up, in case of I might need them in other projects. If you need to use this gem, make sure it can fit your needs. I won't put many efforts on this, the only goal to make things a little bit easier for using their API.

## Installation

Add this line to your application's Gemfile:

    gem 'zhuna_cn_wrapper'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install zhuna_cn_wrapper

## Testing

Some simple testing scripts have been prepared, simply run following commands in root of the project directory:

To testing the city related interface:

    ruby -Ilib examples/get_cities.rb

To testing the hotel related interface:

    ruby -Ilib examples/get_hotels.rb

## Usage

TODO: Write usage instructions here

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

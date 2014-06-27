# Rack::Upcasebody

Rackミドルウェアの実装サンプルです。


（参考） http://www.amazon.co.jp/dp/4774165166

## Installation

Add this line to your application's Gemfile:

    gem 'rack-upcasebody', :git => "https://github.com/murayama333/rack-upcasebody.git"

And then execute:

    $ bundle

Or install it yourself as:

    ($ gem install specific_install)
    $ gem specific_install -l 'https://github.com/murayama333/rack-upcasebody.git'
    
（参考） http://qiita.com/yuku_t/items/5ab4fbe404b718999a35

## Usage

```ruby

require "rack/upcasebody"
App = lambda do |env|
  [200, {"Content-Type" => "text/html"}, ["Hello world!"]]
end

use Rack::Upcasebody
run App
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/rack-upcasebody/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

# OmniAuth ID.me

This gem contains the ID.me strategy for [OmniAuth 2.0](https://github.com/intridea/omniauth).

ID.me offers online brands a secure, real-time method for verifying the military affiliation of their customers online. By verifying military affiliation companies can tailor the user experience on their platform to offer discounts or other benefits.

Read our [documentation](https://developer.id.me/docs) to learn more about how to integrate.

## How To Use It

Usage is as per any other OmniAuth 2.0 strategy.

Add the strategy to your `Gemfile` alongside OmniAuth:

    gem "omniauth"
    gem "omniauth-idme"

In a Rack application:

    use OmniAuth::Builder do
      provider :idme, "consumer_key", "consumer_secret"
    end

For Rails, put this in your OmniAuth configuration file (config/initializers/omniauth.rb):

    Rails.application.config.middleware.use OmniAuth::Builder do
      provider :idme, "consumer_key", "consumer_secret"
    end

By default the scope passed to the ID.me API is military. If you would like to support another scope, put this in your OmniAuth configuration file (config/initializers/omniauth.rb):

    Rails.application.config.middleware.use OmniAuth::Builder do
      provider :idme, "consumer_key", "consumer_secret",
      :scope => "scope"
    end

Register your app at https://sandbox.developer.id.me/ during development and https://developer.id.me/ for production. Once your app has been approved you'll receive a consumer token and secret.

## TODO:
- add multi-scope support

## License

Copyright (c) 2012 by ID.me, Inc.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

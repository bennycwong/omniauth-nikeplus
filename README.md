# OmniAuth Nike

Updated 2014.04.04 to work with the officially released Nike+ API.

This is an OmniAuth strategy for authenticating to Nike+ Api. To
use it, you'll need to the Application ID and Secret from Nike+.

## Basic Usage
in your gemfile, add:

	gem 'oauth2', :git => 'https://github.com/bennycwong/oauth2.git'
	gem 'omniauth-nikeplus', '>=0.0.11'

In your configurations if using Omniauth

    use OmniAuth::Builder do
      provider :nikeplus, 
        ENV['NIKEPLUS_CLIENT_ID'], 
        ENV['NIKEPLUS_CLIENT_SECRET']
    end
    
If you are using devise, add the following to your config/initializers/devise.rb
	
	config.omniauth :nikeplus, "NIKEPLUS_CLIENT_ID", "NIKEPLUS_CLIENT_SECRET"



## Original License

Copyright (c) 2014 Benny Wong.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

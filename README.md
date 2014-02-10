[![Build Status](http://img.shields.io/travis/theodi/alternate-rails.svg)](https://travis-ci.org/theodi/alternate-rails)
[![Dependency Status](http://img.shields.io/gemnasium/theodi/alternate-rails.svg)](https://gemnasium.com/theodi/alternate-rails)
[![Coverage Status](http://img.shields.io/coveralls/theodi/alternate-rails.svg)](https://coveralls.io/r/theodi/alternate-rails)
[![Code Climate](http://img.shields.io/codeclimate/github/theodi/alternate-rails.svg)](https://codeclimate.com/github/theodi/alternate-rails)
[![Gem Version](http://img.shields.io/gem/v/alternate_rails.svg)](https://rubygems.org/gems/alternate_rails)
[![License](http://img.shields.io/:license-mit-blue.svg)](http://theodi.mit-license.org)
[![Badges](http://img.shields.io/:badges-7/7-ff6799.svg)](https://github.com/pikesley/badger)

# AlternateRails

Helpers for Rails 3.2 for building autodiscovery and links for alternative page formats. Also sends correct `Content-Location` headers if no extension has been specified.

## License

This code is open source under the MIT license. See the LICENSE.md file for 
full details.

## Requirements

* Rails ~> 3.2.13

## Usage

In your controller, if you have alternative representations, call ```alternate_formats``` 
from a before_filter:

```before_filter(:only => [:index, :show]) { alternate_formats [:json, :ics] }```

In the header in your layout, call `alternate_auto_discovery_link_tags` to generate
autodiscover link tags.

In your view, call `alternate_link_buttons` to build some buttons for links. Currently these 
assume bootstrap and font-awesome, but it would be good to make styling more flexible.

If you want to change elements of the link buttons, you can specify a class and / or icon as follows:

  	alternate_link_buttons(:class => 'myclass', :icon => 'icon-myicon')
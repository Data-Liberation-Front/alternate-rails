# AlternateRails

Helpers for Rails 3.2 for building autodiscovery and links for alternative page formats. Also sends correct `Content-Location` headers if no extension has been specified.

## License

This code is open source under the MIT license. See the LICENSE.md file for 
full details.

## Requirements

* Rails ~> 3.2.13

## Usage

In your controller, if you have alternative representations, call ```set_alternate_formats``` 
from a before_filter:

```before_filter(:only => [:index, :show]) { alternate_formats [:json, :ics] }```

In the header in your layout, call `alternate_auto_discovery_link_tags` to generate
autodiscover link tags.

In your view, call `alternate_link_buttons` to build some buttons for links. Currently these 
assume bootstrap and font-awesome, but it would be good to make styling more flexible
# DisableSection

UI helper that disables an entire section with its inner html elements based on a given condition

## Installation

Add this line to your application's Gemfile:

    gem 'disable_section'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install disable_section

## Usage

  1. In the ```application.js``` add ```//= require disable_section```

  2. In your html erb, use the ```disable_section``` helper, which receives a predicate and then a block to render.
     If the predicate is true, then the default elements: a, input, select, textarea, button will be added class 'disabled' (which you need to create CSS for, and also be added the 'disabled' attribute.
     If the predicate is false, then the block will be rendered normally.

  ```ruby
    <%= disable_section can_fill_this_field? do %>
      <%= f.email_field :email %>
    <% end %>
  ```

  3. If you want specific elements within the section to remain enabled, give them class ```keep-enabled```

  4. Note that it depends on jQuery, and works also on future elements (e.g. add new DOM elements via AJAX).

## TODO

 Specs

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

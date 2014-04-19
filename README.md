# Disable Section

UI helper that disables an entire section with its inner html elements based on a given condition during render phase.
For example, you have a form which can be edited only in "edit mode" but readonly in "view mode".

## Installation

Add this line to your application's Gemfile:

    gem 'disable_section'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install disable_section

## Usage

  * In the ```application.js``` add

     ```
     //= require disable_section
     ```

  * In your html erb, use the ```disable_section``` helper, which receives a predicate and then a block to render.

     If the predicate is true, then the default elements: a, input, select, textarea and button will be added the class 'disabled' (which you need to create CSS for), and also be added the 'disabled' attribute.

     If the predicate is false, then the block will be rendered normally.

    ```ruby
      <%= disable_section view_mode? do %>  <!-- suppose view_mode? is your redicate -->
        <%= f.email_field :email %>
      <% end %>
    ```

  * If you want specific elements within the section to remain enabled, give them class ```keep-enabled```


## Notes

  * Note that it depends on jQuery, and works also on future elements (e.g. add new DOM elements via AJAX).

  * It doesn't act as a toggler, that it, changing the predicate after the view has been rendered will have no effect.

## TODO

 Specs - add higher level and integration tests

## License

See MIT-LICENSE

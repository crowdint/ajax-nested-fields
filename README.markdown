# ajax-nested-fields

This gem is an easy way to use nested fields with jQuery in your Rails app.

## Installing

Include the gem in your Gemfile
    gem 'ajax-nested-fields'

Install it
	bundle install

Run the generator
    rails g ajax_nested_fields:install

Include nested-fields.js on your layouts
    javascript_include_tag "ajax-nested-fields.js"

## Usage

Having nested attributes in your models, you can use the fields_for helper method for
nesting models as you normally do.

    <%= link_to_new_child(f, "categories") %>

    <div id="categories">
      <%= f.fields_for :categories do |builder| %>
          <%= render 'category_fields', :f => builder %>
      <% end %>
    </div>

Using a partial keeps the nested fields organized, the partial category_fields could be something like this:

    <div class="category">
      <%= f.label :size, "Size" %>
      <%= f.text_field :size %>
      <%= link_to_remove_fields "Remove", f, 'category' %>
    </div>

The important part is that you are able to use the helper methods link_to_new_child and
link_to_remove_fields to generate links that dynamically add or remove fields.

You can use the link_to_new_child by passing the variable of your form and the association:
    <%= link_to_new_child(f, "categories") %>

And the same goes for the link_to_remove_fields, where you have to
pass three arguments: the name, the f variable and the name of the container

    <%= link_to_remove_fields "remove", f, 'category' %>

# About the Author

[Crowd Interactive](http://www.crowdint.com) is an American web design and development company
that happens to work in Colima, Mexico.
We specialize in building and growing online retail stores. We don’t work with everyone – just
companies we believe in. Call us today to see if there’s a fit.
Find more info [here](http://www.crowdint.com)!


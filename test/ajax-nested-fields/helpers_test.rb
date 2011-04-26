require 'test_helper'
require 'action_view/template/handlers/erb'

class HelpersTest < ActionView::TestCase
  include AjaxNestedFields::Helpers

  def test_link_to_remove_fields
    movie = Movie.new
    result = form_for movie do |f|
      link_to_remove_fields('movie_name', f, 'movies')
    end

    assert_match result, %r{onclick="remove_fields\(this, 'movies'\); return false;"}
  end

  def test_link_to_new_child
    movie = Movie.new
    result = form_for movie do |f|
      link_to_new_child(f, 'actors')
    end

    assert_match result, %r{onclick="add_child_field\('actors', 'new_actor',}
  end
end

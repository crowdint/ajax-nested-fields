require 'test_helper'
require 'action_view/template/handlers/erb'

class Movie
  extend ActiveModel::Naming
  include ActiveModel::Conversion

  def persisted?
    false
  end

  def _destroy

  end
end

class HelpersTest < ActionView::TestCase
  include AjaxNestedFields::Helpers

  def test_link_to_remove_fields
    movie = Movie.new
    result = form_for movie do |f|
      link_to_remove_fields('movie_name', f, 'movies')
    end

    assert_match result, %r{onclick="remove_fields\(this, 'movies'\); return false;"}
  end
end

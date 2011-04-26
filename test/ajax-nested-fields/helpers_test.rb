require 'test_helper'
require 'action_view/template/handlers/erb'

ActiveRecord::Base.establish_connection(:adapter => "sqlite3", :database => ":memory:")
ActiveRecord::Schema.define(:version => 1) do
  create_table :movies do |t|
    t.column :name, :string
  end

  create_table :actors do |t|
    t.column :name, :string
  end
end


class Movie < ActiveRecord::Base
  has_many :actors
end

class Actor < ActiveRecord::Base; end

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

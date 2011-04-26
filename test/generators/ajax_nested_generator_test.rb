require 'test_helper'

class AjaxNestedGeneratorTest < Rails::Generators::TestCase
  tests AjaxNestedFields::Generators::InstallGenerator
  destination File.dirname(__FILE__) + "/../tmp"

  setup :prepare_destination

  def test_install_javascript_file
    run_generator
    assert_file 'public/javascripts/ajax-nested-fields.js'
  end
end

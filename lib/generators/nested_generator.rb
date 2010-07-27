require 'rails/generators'

class NestedGenerator < Rails::Generators::Base
  def install
    # Copy the unobtrusive JS file
    copy_file('nested-fields.js', 'public/javascripts/nested-fields.js')
    copy_file('nested_fields_helper.rb', 'app/helpers/nested_fields_helper.rb')
  end

  def self.source_root
    File.join(File.dirname(__FILE__), 'templates')
  end
end
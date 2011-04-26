require 'rails/generators'

class AjaxNestedGenerator < Rails::Generators::Base
  def install
    # Copy the unobtrusive JS file
    copy_file('nested-fields.js', 'public/javascripts/nested-fields.js')
  end

  def self.source_root
    File.join(File.dirname(__FILE__), 'templates')
  end
end

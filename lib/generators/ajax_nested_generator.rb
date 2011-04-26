require 'rails/generators'

module AjaxNestedFields
  module Generators
    class InstallGenerator < Rails::Generators::Base
      def install
        # Copy the unobtrusive JS file
        copy_file('ajax-nested-fields.js', 'public/javascripts/ajax-nested-fields.js')
      end

      def self.source_root
        File.join(File.dirname(__FILE__), 'templates')
      end
    end
  end
end

require 'action_view'
require 'ajax-nested-fields/helpers'

# module NestedFields
  # def self.included(base)
    # base.extend(ClassMethods)
  # end
# end

ActionView::Base.send :include, AjaxNestedFields::Helpers

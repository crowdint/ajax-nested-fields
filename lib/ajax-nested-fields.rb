require 'action_view'
require 'ajax-nested-fields/helpers'
require 'generators/ajax_nested_generator'

ActionView::Base.send :include, AjaxNestedFields::Helpers

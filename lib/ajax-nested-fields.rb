require 'action_view'
require 'ajax-nested-fields/helpers'

ActionView::Base.send :include, AjaxNestedFields::Helpers

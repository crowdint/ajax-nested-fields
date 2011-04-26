require 'rubygems'
require 'bundler/setup'
require 'minitest/autorun'

ENV['RAILS_ENV'] ||= 'test'

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'rails/all'
require 'rails/test_help'
require 'support/active_record'
require 'ajax-nested-fields'

module AjaxNestedFields
  class Application < Rails::Application; end
end

ActionController::Base.send :include, AjaxNestedFields::Application.routes.url_helpers
path = File.join(File.dirname(__FILE__), "support", "views")
ActionController::Base.view_paths = [path]

AjaxNestedFields::Application.routes.draw do
  resources :movies
end

# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "ajax-nested-fields/version"

Gem::Specification.new do |s|
  s.name        = "ajax-nested-fields"
  s.version     = AjaxNestedFields::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Roberto Sanchez", "David Padilla"]
  s.email       = ["roberto.sanchez@crowdint.com", "david@crowdint.com"]
  s.homepage    = ""
  s.summary     = %q{Easy implementation of AJAX Nested fields"}
  s.description = %q{Easy implementation of AJAX Nested fields"}

  s.rubyforge_project = "ajax-nested-fields"

  s.add_dependency 'rails', '~> 3.0.0'
  s.add_development_dependency "minitest"
  s.add_development_dependency "sqlite3"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }

  s.files.reject! {|fn| fn =~ /^example/}

  s.require_paths = ["lib"]
end

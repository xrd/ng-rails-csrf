# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ng-rails-csrf/version'

Gem::Specification.new do |gem|
  gem.name          = "ng-rails-csrf"
  gem.version       = Ng::Rails::Csrf::VERSION
  gem.authors       = ["Chris Dawson"]
  gem.email         = ["xrdawson@gmail.com"]
  gem.description   = %q{AngularJS for using CSRF token with http requests}
  gem.summary       = %q{AngularJS rails gem which you can load into any rails project to make sure CSRF token is used with Angular http requests}
  gem.homepage      = ""

  gem.files = Dir['lib/**/*.rb'] + Dir['vendor/assets/javascripts/*.js']

  gem.require_paths = ["lib"]
end

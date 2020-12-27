$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "alternate_rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "alternate_rails"
  spec.version     = AlternateRails::VERSION
  spec.authors     = ["James Smith"]
  spec.license     = "MIT"
  spec.email       = ["james.smith@theodi.org"]
  spec.homepage    = "http://"
  spec.summary     = "Helpers to make adding links to alternate formats easy"

  spec.files = Dir["{app,config,db,lib}/**/*"] + ["LICENSE.md", "README.md"]
  spec.test_files = Dir["test/**/*"]

  spec.required_ruby_version = "~> 2.4"

  spec.add_dependency "rails", ">= 5.0.0"

  spec.add_development_dependency "sqlite3"
  spec.add_development_dependency "rspec", "~> 3.5"
  spec.add_development_dependency "actionpack", '>= 5.0.0'
  spec.add_development_dependency "activesupport", '>= 5.0.0'
  spec.add_development_dependency "activemodel", '>= 5.0.0'
  spec.add_development_dependency "railties", '>= 5.0.0'
  spec.add_development_dependency "coveralls"

end

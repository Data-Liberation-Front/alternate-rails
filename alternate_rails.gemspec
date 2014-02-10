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

  spec.add_dependency "rails", "~> 3.2.13"

  spec.add_development_dependency "sqlite3"
  spec.add_development_dependency "rspec", "~> 2.14"
  spec.add_development_dependency "actionpack", '>= 3.2.0'
  spec.add_development_dependency "activesupport", '>= 3.2.0'
  spec.add_development_dependency "activemodel", '>= 3.2.0'
  spec.add_development_dependency "railties", '>= 3.2.0'
  spec.add_development_dependency "coveralls"

end

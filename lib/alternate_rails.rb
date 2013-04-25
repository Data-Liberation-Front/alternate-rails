require 'alternate_rails/version'
require 'alternate_rails/controller_helpers'
require 'alternate_rails/view_helpers'

module AlternateRails

  class Railtie < Rails::Railtie
    initializer "alternate_rails.helpers" do
      ActionView::Base.send :include, AlternateRails::ViewHelpers
      ActionController::Base.send :include, AlternateRails::ControllerHelpers
    end
  end

end
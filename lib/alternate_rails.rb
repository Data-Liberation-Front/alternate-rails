require 'alternate_rails/controller_helpers'
require 'alternate_rails/view_helpers'

module AlternateRails

  ActionController::Base.send(:include, AlternateRails::ControllerHelpers)

  class Railtie < Rails::Railtie
    initializer "alternate_rails.view_helpers" do
      ActionView::Base.send :include, AlternateRails::ViewHelpers
    end
  end

end

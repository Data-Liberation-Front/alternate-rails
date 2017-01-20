require 'spec_helper'

describe AlternateRails::ViewHelpers do

  class TestView < ActionView::Base
  end

  before :all do
    @view = TestView.new
  end

  it 'should mix in view helpers on initialization' do
    @view.should respond_to(:alternate_url)
    @view.should respond_to(:alternate_button)
    @view.should respond_to(:alternate_link_buttons)
    @view.should respond_to(:alternate_auto_discovery_link_tag)
    @view.should respond_to(:alternate_auto_discovery_link_tags)
  end

end
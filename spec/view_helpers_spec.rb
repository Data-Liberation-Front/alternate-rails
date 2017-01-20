require 'spec_helper'

describe AlternateRails::ViewHelpers do

  class TestView < ActionView::Base
  end

  before :all do
    @view = TestView.new
  end

  it 'should mix in view helpers on initialization' do
    expect(@view).to respond_to(:alternate_url)
    expect(@view).to respond_to(:alternate_button)
    expect(@view).to respond_to(:alternate_link_buttons)
    expect(@view).to respond_to(:alternate_auto_discovery_link_tag)
    expect(@view).to respond_to(:alternate_auto_discovery_link_tags)
  end

end
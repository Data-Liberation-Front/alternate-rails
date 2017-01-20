require 'spec_helper'

describe AlternateRails::ControllerHelpers do

  class TestController < ActionController::Base
  end

  before :all do
    @controller = TestController.new
  end

  it 'should mix in controller helpers on initialization' do
    expect(@controller).to respond_to(:alternate_formats)
    expect(@controller).to respond_to(:send_headers)
  end

end
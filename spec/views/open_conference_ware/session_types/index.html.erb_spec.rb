require 'spec_helper'

describe "open_conference_ware/session_types/index.html.erb" do
  include OpenConferenceWare::SessionTypesHelper

  before(:each) do
    @event = stub_current_event!
    assign(:session_types, [
      stub_model(SessionType, event: @event),
      stub_model(SessionType, event: @event)
    ])
    view.stub(:admin?).and_return(false)
  end

  it "should render list of session_types" do
    render
  end
end

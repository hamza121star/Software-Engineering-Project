require 'spec_helper'

describe "discussions/index" do
  before(:each) do
    assign(:discussions, [
      stub_model(Discussion,
        :Name => "Name",
        :Message => "Message"
      ),
      stub_model(Discussion,
        :Name => "Name",
        :Message => "Message"
      )
    ])
  end

  it "renders a list of discussions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Message".to_s, :count => 2
  end
end

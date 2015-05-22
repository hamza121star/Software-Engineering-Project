require 'spec_helper'

describe "instructors/index" do
  before(:each) do
    assign(:instructors, [
      stub_model(Instructor,
        :Full_Name => "Full Name",
        :Your_Description => "Your Description"
      ),
      stub_model(Instructor,
        :Full_Name => "Full Name",
        :Your_Description => "Your Description"
      )
    ])
  end

  it "renders a list of instructors" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Full Name".to_s, :count => 2
    assert_select "tr>td", :text => "Your Description".to_s, :count => 2
  end
end

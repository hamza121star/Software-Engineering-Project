require 'spec_helper'

describe "instructor1s/index" do
  before(:each) do
    assign(:instructor1s, [
      stub_model(Instructor1,
        :email => "Email",
        :password => "Password",
        :Full_Name => "Full Name",
        :Your_Description => "Your Description"
      ),
      stub_model(Instructor1,
        :email => "Email",
        :password => "Password",
        :Full_Name => "Full Name",
        :Your_Description => "Your Description"
      )
    ])
  end

  it "renders a list of instructor1s" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Password".to_s, :count => 2
    assert_select "tr>td", :text => "Full Name".to_s, :count => 2
    assert_select "tr>td", :text => "Your Description".to_s, :count => 2
  end
end

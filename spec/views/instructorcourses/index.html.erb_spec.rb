require 'spec_helper'

describe "instructorcourses/index" do
  before(:each) do
    assign(:instructorcourses, [
      stub_model(Instructorcourse,
        :instructoremail => "Instructoremail",
        :coursecode => "Coursecode",
        :coursename => "Coursename",
        :coursedescription => "Coursedescription"
      ),
      stub_model(Instructorcourse,
        :instructoremail => "Instructoremail",
        :coursecode => "Coursecode",
        :coursename => "Coursename",
        :coursedescription => "Coursedescription"
      )
    ])
  end

  it "renders a list of instructorcourses" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Instructoremail".to_s, :count => 2
    assert_select "tr>td", :text => "Coursecode".to_s, :count => 2
    assert_select "tr>td", :text => "Coursename".to_s, :count => 2
    assert_select "tr>td", :text => "Coursedescription".to_s, :count => 2
  end
end

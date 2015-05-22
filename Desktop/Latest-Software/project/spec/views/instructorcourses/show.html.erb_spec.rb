require 'spec_helper'

describe "instructorcourses/show" do
  before(:each) do
    @instructorcourse = assign(:instructorcourse, stub_model(Instructorcourse,
      :instructoremail => "Instructoremail",
      :coursecode => "Coursecode",
      :coursename => "Coursename",
      :coursedescription => "Coursedescription"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Instructoremail/)
    rendered.should match(/Coursecode/)
    rendered.should match(/Coursename/)
    rendered.should match(/Coursedescription/)
  end
end

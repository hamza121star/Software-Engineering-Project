require 'spec_helper'

describe "instructors/show" do
  before(:each) do
    @instructor = assign(:instructor, stub_model(Instructor,
      :Full_Name => "Full Name",
      :Your_Description => "Your Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Full Name/)
    rendered.should match(/Your Description/)
  end
end

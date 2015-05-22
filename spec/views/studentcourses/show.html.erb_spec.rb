require 'spec_helper'

describe "studentcourses/show" do
  before(:each) do
    @studentcourse = assign(:studentcourse, stub_model(Studentcourse,
      :email => "Email",
      :coursecode => "Coursecode"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Email/)
    rendered.should match(/Coursecode/)
  end
end

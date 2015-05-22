require 'spec_helper'

describe "studentcourses/index" do
  before(:each) do
    assign(:studentcourses, [
      stub_model(Studentcourse,
        :email => "Email",
        :coursecode => "Coursecode"
      ),
      stub_model(Studentcourse,
        :email => "Email",
        :coursecode => "Coursecode"
      )
    ])
  end

  it "renders a list of studentcourses" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Coursecode".to_s, :count => 2
  end
end

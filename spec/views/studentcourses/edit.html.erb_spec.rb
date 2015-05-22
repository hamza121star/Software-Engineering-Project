require 'spec_helper'

describe "studentcourses/edit" do
  before(:each) do
    @studentcourse = assign(:studentcourse, stub_model(Studentcourse,
      :email => "MyString",
      :coursecode => "MyString"
    ))
  end

  it "renders the edit studentcourse form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", studentcourse_path(@studentcourse), "post" do
      assert_select "input#studentcourse_email[name=?]", "studentcourse[email]"
      assert_select "input#studentcourse_coursecode[name=?]", "studentcourse[coursecode]"
    end
  end
end

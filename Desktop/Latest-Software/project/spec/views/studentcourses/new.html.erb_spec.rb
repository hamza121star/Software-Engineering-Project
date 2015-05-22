require 'spec_helper'

describe "studentcourses/new" do
  before(:each) do
    assign(:studentcourse, stub_model(Studentcourse,
      :email => "MyString",
      :coursecode => "MyString"
    ).as_new_record)
  end

  it "renders new studentcourse form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", studentcourses_path, "post" do
      assert_select "input#studentcourse_email[name=?]", "studentcourse[email]"
      assert_select "input#studentcourse_coursecode[name=?]", "studentcourse[coursecode]"
    end
  end
end

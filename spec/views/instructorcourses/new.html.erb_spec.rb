require 'spec_helper'

describe "instructorcourses/new" do
  before(:each) do
    assign(:instructorcourse, stub_model(Instructorcourse,
      :instructoremail => "MyString",
      :coursecode => "MyString",
      :coursename => "MyString",
      :coursedescription => "MyString"
    ).as_new_record)
  end

  it "renders new instructorcourse form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", instructorcourses_path, "post" do
      assert_select "input#instructorcourse_instructoremail[name=?]", "instructorcourse[instructoremail]"
      assert_select "input#instructorcourse_coursecode[name=?]", "instructorcourse[coursecode]"
      assert_select "input#instructorcourse_coursename[name=?]", "instructorcourse[coursename]"
      assert_select "input#instructorcourse_coursedescription[name=?]", "instructorcourse[coursedescription]"
    end
  end
end

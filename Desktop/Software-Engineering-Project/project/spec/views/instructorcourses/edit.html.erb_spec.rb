require 'spec_helper'

describe "instructorcourses/edit" do
  before(:each) do
    @instructorcourse = assign(:instructorcourse, stub_model(Instructorcourse,
      :instructoremail => "MyString",
      :coursecode => "MyString",
      :coursename => "MyString",
      :coursedescription => "MyString"
    ))
  end

  it "renders the edit instructorcourse form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", instructorcourse_path(@instructorcourse), "post" do
      assert_select "input#instructorcourse_instructoremail[name=?]", "instructorcourse[instructoremail]"
      assert_select "input#instructorcourse_coursecode[name=?]", "instructorcourse[coursecode]"
      assert_select "input#instructorcourse_coursename[name=?]", "instructorcourse[coursename]"
      assert_select "input#instructorcourse_coursedescription[name=?]", "instructorcourse[coursedescription]"
    end
  end
end

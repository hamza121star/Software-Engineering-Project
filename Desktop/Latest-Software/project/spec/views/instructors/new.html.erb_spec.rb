require 'spec_helper'

describe "instructors/new" do
  before(:each) do
    assign(:instructor, stub_model(Instructor,
      :Full_Name => "MyString",
      :Your_Description => "MyString"
    ).as_new_record)
  end

  it "renders new instructor form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", instructors_path, "post" do
      assert_select "input#instructor_Full_Name[name=?]", "instructor[Full_Name]"
      assert_select "input#instructor_Your_Description[name=?]", "instructor[Your_Description]"
    end
  end
end

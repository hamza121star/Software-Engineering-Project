require 'spec_helper'

describe "instructors/edit" do
  before(:each) do
    @instructor = assign(:instructor, stub_model(Instructor,
      :Full_Name => "MyString",
      :Your_Description => "MyString"
    ))
  end

  it "renders the edit instructor form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", instructor_path(@instructor), "post" do
      assert_select "input#instructor_Full_Name[name=?]", "instructor[Full_Name]"
      assert_select "input#instructor_Your_Description[name=?]", "instructor[Your_Description]"
    end
  end
end

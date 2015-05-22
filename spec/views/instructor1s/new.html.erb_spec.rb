require 'spec_helper'

describe "instructor1s/new" do
  before(:each) do
    assign(:instructor1, stub_model(Instructor1,
      :email => "MyString",
      :password => "MyString",
      :Full_Name => "MyString",
      :Your_Description => "MyString"
    ).as_new_record)
  end

  it "renders new instructor1 form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", instructor1s_path, "post" do
      assert_select "input#instructor1_email[name=?]", "instructor1[email]"
      assert_select "input#instructor1_password[name=?]", "instructor1[password]"
      assert_select "input#instructor1_Full_Name[name=?]", "instructor1[Full_Name]"
      assert_select "input#instructor1_Your_Description[name=?]", "instructor1[Your_Description]"
    end
  end
end

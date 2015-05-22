require 'spec_helper'

describe "instructor1s/edit" do
  before(:each) do
    @instructor1 = assign(:instructor1, stub_model(Instructor1,
      :email => "MyString",
      :password => "MyString",
      :Full_Name => "MyString",
      :Your_Description => "MyString"
    ))
  end

  it "renders the edit instructor1 form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", instructor1_path(@instructor1), "post" do
      assert_select "input#instructor1_email[name=?]", "instructor1[email]"
      assert_select "input#instructor1_password[name=?]", "instructor1[password]"
      assert_select "input#instructor1_Full_Name[name=?]", "instructor1[Full_Name]"
      assert_select "input#instructor1_Your_Description[name=?]", "instructor1[Your_Description]"
    end
  end
end

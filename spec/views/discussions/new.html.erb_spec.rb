require 'spec_helper'

describe "discussions/new" do
  before(:each) do
    assign(:discussion, stub_model(Discussion,
      :Name => "MyString",
      :Message => "MyString"
    ).as_new_record)
  end

  it "renders new discussion form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", discussions_path, "post" do
      assert_select "input#discussion_Name[name=?]", "discussion[Name]"
      assert_select "input#discussion_Message[name=?]", "discussion[Message]"
    end
  end
end

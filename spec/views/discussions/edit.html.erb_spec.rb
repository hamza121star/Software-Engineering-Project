require 'spec_helper'

describe "discussions/edit" do
  before(:each) do
    @discussion = assign(:discussion, stub_model(Discussion,
      :Name => "MyString",
      :Message => "MyString"
    ))
  end

  it "renders the edit discussion form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", discussion_path(@discussion), "post" do
      assert_select "input#discussion_Name[name=?]", "discussion[Name]"
      assert_select "input#discussion_Message[name=?]", "discussion[Message]"
    end
  end
end

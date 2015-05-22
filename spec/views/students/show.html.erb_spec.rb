require 'spec_helper'

describe "students/show" do
  before(:each) do
    @student = assign(:student, stub_model(Student,
      :email => "Email",
      :password => "Password",
      :name => "Name",
      :gender => "Gender"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Email/)
    rendered.should match(/Password/)
    rendered.should match(/Name/)
    rendered.should match(/Gender/)
  end
end

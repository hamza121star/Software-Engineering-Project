require 'spec_helper'

describe "instructor1s/show" do
  before(:each) do
    @instructor1 = assign(:instructor1, stub_model(Instructor1,
      :email => "Email",
      :password => "Password",
      :Full_Name => "Full Name",
      :Your_Description => "Your Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Email/)
    rendered.should match(/Password/)
    rendered.should match(/Full Name/)
    rendered.should match(/Your Description/)
  end
end

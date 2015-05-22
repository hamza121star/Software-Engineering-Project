require 'spec_helper'

describe Discussion do
  #pending "add some examples to (or delete) #{__FILE__}"
  it "Name should be present but it is not - sad path" do
    @discussion=Discussion.new(Name:"Hamza", Message:"test post")
    @discussion.Name = "   "    
    assert_equal(false,@discussion.valid?)
  end
  it "Name should be present and it is :D - happy path - pass case" do
    @discussion=Discussion.new(Name:"Hamza", Message:"test post")
    assert_equal(@discussion.valid?,true)
  end
  it "Message should be written (space should not be empty) - pass case" do
    @discussion=Discussion.new(Name:"Hamza", Message:"test post")
    assert_equal(@discussion.valid?,true)
  end
end

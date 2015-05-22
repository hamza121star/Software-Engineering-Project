require 'spec_helper'

describe Instructor1 do
  #pending "add some examples to (or delete) #{__FILE__}"
	it "email should be present but it is not - sad path" do
		@instructor1=Instructor1.new(Full_Name:"Ihsan Ayyub", email:"ihsan@lums", password:"456789")
		@instructor1.email = "   "		
		assert_equal(false,@instructor1.valid?)
	end
	it "email should be present - happy path - should pass" do
		@instructor1=Instructor1.new(Full_Name:"Ihsan Ayyub", email:"ihsan@lums", password:"456789")
		assert_equal(@instructor1.valid?,true)
	end
	it "password should be atleast 5 chars - happy path" do
		@instructor1=Instructor1.new(Full_Name:"Ihsan Ayyub", email:"ihsan@lums", password:"456789")
		@instructor1.password = "456789"		
		assert @instructor1.valid?
	end
	it "password should be atleast 5 chars - sad path" do
		@instructor1=Instructor1.new(Full_Name:"Ihsan Ayyub", email:"ihsan@lums", password:"456789")
		@instructor1.password="456"		
		assert_equal(@instructor1.valid?,false)
	end
	it "name should be present" do
	@instructor1=Instructor1.new(Full_Name:"Ihsan Ayyub", email:"ihsan@lums", password:"456789")	
	assert_equal(@instructor1.valid?,true)			
	end

end

require 'spec_helper'

describe Student do
	#pending "add some examples to (or delete) #{__FILE__}"
	it "email should be present - sad path" do
		@student=Student.new(name:"raza Hussain", email:"hussain@lums", password:"123456")
		@student.email = "   "		
		assert_equal(false,@student.valid?)
	end
	it "email should be present - happy path - should pass" do
		@student=Student.new(name:"raza Hussain", email:"hussain@lums", password:"123456")
		assert_equal(@student.valid?,true)
	end
	it "password should be atleast 5 chars - happy path" do
		@student=Student.new(name:"raza Hussain", email:"hussain@lums", password:"123456")
		@student.password = "123456"		
		assert @student.valid?
	end
	it "password should be atleast 5 chars - sad path" do
		@student=Student.new(name:"raza Hussain", email:"hussain@lums", password:"123456")
		@student.password = "123"		
		assert_equal(@student.valid?,false)
	end
	it "name should be present" do
	@student=Student.new(name:"raza Hussain", email:"hussain@lums",password:"123456")	
	assert_equal(@student.valid?,true)			
	end


end

require 'spec_helper'

describe Studentcourse do
  #pending "add some examples to (or delete) #{__FILE__}"
	it "student_course email should be present but is not - sad path" do
		# i dont know whether we make a new @variable here?
		@studentcourse=Studentcourse.new(coursecode:"CS200", email:"hussain@lums")
		@studentcourse.email = "   "		
		assert_equal(false,@studentcourse.valid?)
		#puts "Passed 1"
	end
	it "email should be present - happy path - should pass" do
		@studentcourse=Studentcourse.new(coursecode:"CS200", email:"hussain@lums")
		assert_equal(@studentcourse.valid?,true)
		#puts "Passed 2"
	end

	it "coursecode should be present" do
	@studentcourse=Studentcourse.new(coursecode:"CS200", email:"hussain@lums")	
	assert_equal(@studentcourse.valid?,true)
	#puts "Passed 3"			
	end
	it "coursecode not present" do
		@studentcourse=Studentcourse.new(coursecode:"CS200", email:"hussain@lums")
		@studentcourse.coursecode = "   "		
		assert_equal(false,@studentcourse.valid?)	
	end

end

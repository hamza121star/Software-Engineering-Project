require 'spec_helper'

describe Instructorcourse do
  #pending "add some examples to (or delete) #{__FILE__}"
	it "email should be present but is not - sad path" do
		# i dont know whether we make a new @variable here?
		@Instructorcourse=Instructorcourse.new(coursename:"Intro to programming",coursecode:"CS200", instructoremail:"ihsan@lums")
		@Instructorcourse.instructoremail = " "		
		assert_equal(false,@Instructorcourse.valid?)
		#puts "Passed 1"
	end
	it "email should be present - happy path - should pass" do
		@Instructorcourse=Instructorcourse.new(coursename:"Intro to programming",coursecode:"CS200", instructoremail:"ihsan@lums")
		assert_equal(@Instructorcourse.valid?,true)
		#puts "Passed 2"
	end

	it "coursecode should be present" do
	@Instructorcourse=Instructorcourse.new(coursename:"Intro to programming",coursecode:"CS200", instructoremail:"ihsan@lums")	
	assert_equal(@Instructorcourse.valid?,true)
	#puts "Passed 3"			
	end

	it "coursecode not present" do
		@Instructorcourse=Instructorcourse.new(coursename:"Intro to programming",coursecode:"CS200", instructoremail:"ihsan@lums")
		@Instructorcourse.coursecode = "   "		
		assert_equal(false,@Instructorcourse.valid?)	
	end
	it "courseName should be present" do
		@Instructorcourse=Instructorcourse.new(coursename:"Intro to programming",coursecode:"CS200", 		 instructoremail:"ihsan@lums")	
		assert_equal(@Instructorcourse.valid?,true)
		#puts "Passed 3"			
	end
	it "courseName not present - sad path" do
		@Instructorcourse=Instructorcourse.new(coursename:"Intro to programming",coursecode:"CS200", instructoremail:"ihsan@lums")
		@Instructorcourse.coursename = "   "		
		assert_equal(false,@Instructorcourse.valid?)	
	end


end

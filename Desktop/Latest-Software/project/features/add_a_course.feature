Feature: Instructor can create a new course
	As a faculty member
 	I want to create a new course page
 	So that students can enroll into the course
  
Background: Courses have been added to the database
	
  Given the following courses exist:
  | Course Name           | Course code | Instructor          |
  | Intro to Probability  | MATH230     | Dr.Adnan Khan       | 
  | Intro to Logic        | CS330       | Shabbir Ahsan       |  
  | Software Engineering  | PHIL101     | Dr.Hamid Abdul Basit| 
  And I am on the Course Manager courses page  

Scenario: Add a course
	Given I am logged as an instructor
	And I am on Course Management System Homepage
	When I press "Add a new Course"
	Then I should be on the Create new course page
	When I fill title with "Probability"
	And I press "Create"
	Then I should be on on Course Management System Homepage
	And I should see Probability
Feature: Instructor can create a new course

  As a faculty member
  So that students can enroll into the course
  I want to create a new course page

#Background to be added here

Scenerio: Add a course
  Given I am looged as an instructor
  And I am on Course Management System Homepage
  When I press "Add a new Course"
  Then I should be on the Create new course page
  When I fill title with "Probability"
  And I press "Create"
  Then I should be on on Course Management System Homepage
  And I should see Probability




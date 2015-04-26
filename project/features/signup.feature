Feature: User can signup to the website

  As a user
  So that I can login in future and access the restricted areas
  I want to signup to the website

#add background here

Scenerio:

Given that I signup as an instructor or a student
  And I am on the signup page
  Then I should be able to provide a valid and unique username
  And I should be able to provide a valid and unique email address
  And I should be able to provide a password thats atleast 8 characters long
  And password should not contain any escape characters
  And I should provide my password again for confirmation
  And I press signup 
  Then I should be directed to the login page



Feature: User can sign up to the website

	As a user
    I want to sign up
    So that I can use the system

#add background here

	Scenario:
		Given that I have to sign up as a student
		And I am on the sign up page
		Then I enter my email address
        And I enter a valid username
        And I enter a valid password
        And I re-enter the password for confirmation
        And I press "Sign Up"
		Then I should be redirected to the login page

Feature: User can add a post in the discussion forum

  As a logged in user
  So that my point of view or problem is heard
  I want to participate in a discussion topic in course forum
  
#Background to be added here


Scenario: Add a post
  Given I am logged in as a User or Faculty member
  And I am on the Discussion Forum Page
  When I follow "Add new post"
  Then I should be on the Create New Post page
  When I fill in "Post" with "Hello"
  And I press "Save Changes"
  Then I should be on the Discussion Forum page
  And I should see "Hello"



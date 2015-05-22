Feature: Faculty member can add a topic

  As a faculty member 
  So that students can have resources for the topic
  I want to add a topic related to a lecture taught

#Background to be added here

Scenario: Add a topic
  Given I am on the Course page
  When I follow "Add new topic"
  Then I should be on the Create New Topic page
  When I fill in "Title" with "Algebra"
  And I press "Save Changes"
  Then I should be on my Course page
  And I should see "Algebra"



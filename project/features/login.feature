Feature: User to login in to the system

  As a user
  I want to login to the website
  So that I can access restricted areas

#add background here

  Scenario: User logs in successfully
    Given I exist as a user
    And I am not logged in
    When I sign in with valid credentials
    Then show me the page
    And I see a successful log in message



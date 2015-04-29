Feature: User to login in to the system

  As a user
  I want to login to the website
  So that I can use the system

Background: Users have been added to the database

  Given the following users exist
  | Name             | Email Address              | Username    | Password |
  | Hamza Mahmood    | hamza.mahmood1993@gmail.com| hamza121star| abc123   |
  | Raza Hussain     | raza.hus@gmail.com         | RazaAwesome | xyz123   |
  | Wardah Riaz      | wardah.riaz@gmail.com      | IamWardah   | ijk123   |  
  | Ramsha Khalil Rao| r_krao@gmail.cm            | RamshaRao   | qrs123   |
  
  And I am on the Course Manager login page

Scenario: User logs in successfully
    Given I exist as a user
    And I am not logged in
    When I sign in with valid credentials
    Then show me the page
    And I see a successful log in message



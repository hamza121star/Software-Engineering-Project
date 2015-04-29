Feature: User to login in to the system

  As a user
  I want to login to the website
  So that I can access restricted areas

<<<<<<< HEAD
Background: Users have been added to the database

  Given the following users exist
  | Name             | Email Address              | Username    | Password |
  | Hamza Mahmood    | hamza.mahmood1993@gmail.com| hamza121star| abc123   |
  | Raza Hussain     | raza.hus@gmail.com         | RazaAwesome | xyz123   |
  | Wardah Riaz      | wardah.riaz@gmail.com      | IamWardah   | ijk123   |  
  | Ramsha Khalil Rao| r_krao@gmail.cm            | RamshaRao   | qrs123   |
  
  And I am on the Course Manager login page

Scenario: User logs in successfully
=======
#add background here

  Scenario: User logs in successfully
>>>>>>> 5bf90e9bdc0b6cbf21aff31d7b4989150f9cc144
    Given I exist as a user
    And I am not logged in
    When I sign in with valid credentials
    Then show me the page
    And I see a successful log in message



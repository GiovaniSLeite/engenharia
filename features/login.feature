Feature: Sign in the system
  In order to enter in the system
  As a user of the website
  I want to be able to login
  
  
  
  Scenario: Correct Login
    Given I am on the homepage
    When I login with "teste" username and "123" password
    Then I should see the panel page

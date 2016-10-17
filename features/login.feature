Feature: Sign in the system
  In order to enter in the system
  As a user of the website
  I want to be able to login
  
  
  
  Scenario: Correct Login
    Given I am on the homepage
    When I login with "ctccaio@hotmail.com" username and "123456" password
    Then I should see the panel page

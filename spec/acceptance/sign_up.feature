@sign_up_steps
@home_steps

Feature: Sign Up
  As user
  I want to sign up to the system

  Scenario: user can pass the Getting Started section with correct credentials
    Given I am on home page
    When I click sign up button on home page
    Then I should be redirected to sign up page
    And fill in correct credentials in Getting Started section
    And click next button

  Scenario: user can not pass the Getting Started section with incorrect credentials(Email and retyped email are different)
    Given I am on home page
    When I click sign up button on home page
    Then I should be redirected to sign up page
    And fill in incorrect credentials in Getting Started section
    And I see the alert message 'Please enter the same value again'

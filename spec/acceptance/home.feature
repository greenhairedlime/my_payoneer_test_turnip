@home_steps
Feature: HomePage
  As user

  Scenario: user can open sign up page via menu
  Given I am on home page
  When I click sign up button on home page
  Then I should be redirected to sign up page
Feature: Home Page

  Background: flow till home page
    Given user is on Application home page

  Scenario: Home Page Default content
    Then user gets a GitHub Bootcamp section

  Scenario: GitHub Bootcamp Section
    When user focuses on GitHub Bootcamp Section
    Then user gets an option to setup git

  Scenario: Top Banner content
    When user focuses on Top Banner
    Then user gets an option of home page
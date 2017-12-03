Feature: Logging into the Demo Website
  @smoke_test @sanity_test
  Scenario Outline: Verifying that the user can login
    Given I open the website
    When I login with credentials using record <record>
    Then Flight Finder page is displayed

    Examples:
      | record  |
      | record1 |
      | record2 |
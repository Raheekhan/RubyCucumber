Feature:

  Scenario Outline: Verifying that the user can login
    Given I open the website
    When I login with credentials <username> and <password>
    Then Flight Finder page is displayed

    Examples:
      | username | password |
      | selenium | selenium |
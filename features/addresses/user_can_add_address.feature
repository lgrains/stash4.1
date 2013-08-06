Feature:
  As a user
  I can add an address
  So that people can mail an exchange

  Scenario:
    Given I am logged in as "user@example.com"
    When I go to the new address page for "user@example.com"
    And show me the page
    And I enter the following address data:
      |line_1           | city        |state  |zip_code |
      |123 Pleasant St  | Bella Vista | MA    |01785    |
    Then I should be on the address page for "the new address"
    And I should see "Address was successfully created."
    Then show me the page

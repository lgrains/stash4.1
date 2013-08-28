Feature: As a registered user
  I can create a listing
  So that I can share fabrics with others

  Background:
    Given I am logged in as "quilter@example.com"

  Scenario: user creates listing - yardage
    When I go to the new listing page
    And I fill in the create listing form with valid listing data
    Then I should be on the listing show page for "My Listing"
    And I should see "Listing was successfully created."

  Scenario: guest tries to create listing


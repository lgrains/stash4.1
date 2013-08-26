Feature: As a user
  I can view a listing
  To get more details about the exchange

  Background:
    Given a listing exists with name "My Listing"

  Scenario: a user can view the listing
    When I go to the listing show page for "My Listing"
    Then I can see the details for "My Listing"



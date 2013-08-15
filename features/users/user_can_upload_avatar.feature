Feature: avatar file upload
  In order to identify a user
  as a user
  I can upload an avatar file

  Background:
    Given I am logged in as "quilter@example.com"

  Scenario: Uploading a valid file
    Given I go to the edit user page for "quilter@example.com"
    When I upload an image through the Edit form
    Then I should be on the user show page for "quilter@example.com"
    And I should see the image "user_avatar" with alt "Avatar1"
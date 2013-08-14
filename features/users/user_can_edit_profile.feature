Feature: View user profile
  As a  User
  I want to view my profile
  So I can manage my profile

  Background:
    Given I am logged in as "quilter@example.com"

  Scenario: edit profile
    When I go to the user show page for "quilter@example.com"
    Then I should see the following "Name, Email, Address 1, Address 2, City, State, Zip Code, Phone Number"

    When I follow "Edit"
    Then I should be on the edit user page for "quilter@example.com"
    When I enter the following:
      | first_name | last_name |line_1           | city        |state      |zip_code | phone_number |
      | Petunia    | Bucket    |123 Pleasant St  | Bella Vista | Alaska    |01785    | 305-638-3859 |
    Then I should be on the user show page for "quilter@example.com"
    And I should see the following "Petunia,Bucket,123 Pleasant St,Bella Vista,AK,01785,305-638-3859"




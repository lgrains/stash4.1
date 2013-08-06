Feature:
  As an admin
  I can view all user addresses
  So that I can add or edit if necessary

  Scenario: View all addresses
    Given I am logged in as an admin
    Given the following users:
      | email             | password    | password_confirmation | is_admin| first_name | last_name  |
      | user1@example.com | 12345678    | 12345678              | false   | User       | One        |
      | user2@example.com | 98765432    | 98765432              | false   | User       | Two        |
    And the users have the following addresses:
      | email             | line_1        | line_2  | city          | state     | zip_code|
      | user1@example.com | 123 ABC St    |         | Pleasanttown  | AnyState  | 01176 |
      | user2@example.com | 123 Vision St | Apt 42  | Beantown      | MA        | 01876 |
    When I go to the addresses page
    Then I should see
      | User One | 123 ABC St     |  |  Pleasanttown  | AnyState  | 01176  |
      | User Two | 123 Vision St  |Apt 42 | Beantown  | MA        | 01876  |

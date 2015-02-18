Feature: Customer CRUD

Scenario: Add a new customer
  Given I am in the hompage
  And I create a new customer
  Then I should have a new customer

Scenario: Add duplicate customer
  Given I am in the hompage
  And I create two customers with name "Joe"
  Then I should get a validation error
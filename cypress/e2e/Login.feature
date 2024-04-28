Feature: Login Functionality

Scenario: Login with valid credentials
    Given I am on the HomePage
    When Login form is opened
    When I enter "torchovanastia@gmail.com" email 
    When I enter "8iB9kekPXAzvNoS" password 
    When I click on the Login button
    Then I should be on the GaragePage

Scenario: Login with empty fields
    Given I am on the HomePage
    When Login form is opened
    When I leave the Email and Password fields empty
    Then Login button should be disabled

Scenario: Login with non-existing email and password
    Given I am on the HomePage
    When Login form is opened
    When I enter "torchovanastia@gmail.com" email 
    When I enter "badpassword" password 
    When I click on the Login button
    Then I should see an error message

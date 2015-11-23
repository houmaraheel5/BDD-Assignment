Feature: Acceptance Test for the
  factorial() function of Calculator
 
  Scenario: Calculate factorial 2 on our calculator
    Given I am using the calculator
    When I input "2" 
    Then I should see "2"
	
  Scenario: Calculate factorial 4 on our calculator
    Given I am using the calculator
    When I input "4" 
    Then I should see "24"
	
  Scenario: Calculate factorial -6 on our calculator
    Given I am using the calculator
    When I input "-6" 
    Then I should see "None"

 
  Scenario Outline: Calculate factorial of a number on our calculator
    Given I am using the calculator
    When I input "<input>"
    Then I should see "<output>"

  Examples:
    | input   | output    |
    | 2       | 2         |
    | 4       | 24        |
    | -6      | None      |
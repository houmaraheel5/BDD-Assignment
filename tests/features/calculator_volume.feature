Feature: Acceptance Test for the
  volume() function of Calculator
 
  Background:
    Given I am using the calculator
 
  Scenario: Calculate the volume with 5 and 1 and 3 on our calculator
    Given I input the volume with "5" and "1" and "3"
    Then I should see "15"
 
  Scenario: Calculate the volume with 2 and 3 and 2 on our calculator
    Given I input the volume with "2" and "3" and "2"
    Then I should see "12"

  Scenario: Calculate the volume with 4 and 3 and 2 on our calculator
    Given I input the volume with "4" and "3" and "2"
    Then I should see "24"
	
  Scenario Outline: Calculate volume with three numbers on our calculator
    Given I input the volume with "<input1>" and "<input2>" and "<input3>"
    Then I should see "<output>"

  Examples:
    | input1 | input2 | input3 | output |
    | 5      | 1      | 3      | 15     |
    | 2      | 3      | 2      | 12     |
    | 4      | 3      | 2      | 24     |
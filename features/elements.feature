# language: en

Feature: Elements with Ids
  In order to manage objects
  As a user
  I want objects to be identifiable

  Scenario: first element
    Given an element source
    When I request an element
    Then its Id is not 0

  Scenario: consecutive elements
    Given an element source
    When I request an element
    And then I request another element
    Then the Ids of the elements are different

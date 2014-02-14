Feature: Food
  In order to portray or pluralize food
  As a CLI
  I want to be as objective as possible

  Scenario: Egg is gross
    When I run "foodie portray egg"
    Then the output should contain "gross"

  Scenario: Egg, or eggs?
    When I run "foodie pluralize --word egg"
    Then the output should contain "eggs"
